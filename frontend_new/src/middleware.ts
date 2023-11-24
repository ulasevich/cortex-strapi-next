import { NextResponse, NextRequest } from "next/server";
//import acceptLanguage from "accept-language";
import Negotiator from "negotiator";
import { match as matchLocale } from "@formatjs/intl-localematcher";
import { fallbackLng, locales, cookieName } from "@/i18n/settings";

function getLocale(request: NextRequest): string | undefined {
    // Negotiator expects plain object so we need to transform headers
    const negotiatorHeaders: Record<string, string> = {};
    request.headers.forEach((value, key) => (negotiatorHeaders[key] = value));

    // @ts-ignore locales are readonly
    const locales1: string[] = locales;

    // Use negotiator and intl-localematcher to get best locale
    let languages = new Negotiator({ headers: negotiatorHeaders }).languages(
        locales1
    );

    const locale = matchLocale(languages, locales1, fallbackLng);

    return locale;
}

const PUBLIC_FILE = /\.(.*)$/;

export function middleware(request: NextRequest) {
    if (PUBLIC_FILE.test(request.nextUrl.pathname)) return; // чтобы нормально работали запросы к статике в папке public

    let response = NextResponse.next();
    let nextLocale;

    const pathname = request.nextUrl.pathname;

    const isFirstVisit = !request.cookies.has(cookieName);

    let pathLocale = locales.find(
        (locale) =>
            pathname.startsWith(`/${locale}/`) || pathname === `/${locale}`
    );

    if (pathLocale) {
        const isDefaultLocale = pathLocale === fallbackLng;
        if (isDefaultLocale) {
            let pathWithoutLocale =
                pathname.slice(`/${pathLocale}`.length) || "/";
            if (request.nextUrl.search)
                pathWithoutLocale += request.nextUrl.search;

            response = NextResponse.redirect(
                new URL(pathWithoutLocale, request.url)
            );
        }
        nextLocale = pathLocale;
    } else {

        const locale = isFirstVisit ? getLocale(request) : fallbackLng;

        let newPath = `/${locale}${pathname}`;
        if (request.nextUrl.search) newPath += request.nextUrl.search;

        response =
            locale === fallbackLng
                ? NextResponse.rewrite(new URL(newPath, request.url))
                : NextResponse.redirect(new URL(newPath, request.url));
        
        nextLocale = locale;
    }

    console.log("nextLocale", nextLocale);

    if (nextLocale) response.cookies.set(cookieName, nextLocale);

    return response;
}

export const config = {
    // Do not run the middleware on the following paths
    matcher:
        "/((?!api|_next/static|_next/image|manifest.json|assets|favicon.ico).*)",
};
