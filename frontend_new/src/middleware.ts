import { NextResponse } from "next/server";
import type { NextRequest } from "next/server";
import { match as matchLocale } from "@formatjs/intl-localematcher";
import Negotiator from "negotiator";
import { i18n } from "@/i18n-config";


function getLocale(request: NextRequest): string | undefined {
    // Negotiator expects plain object so we need to transform headers
    const negotiatorHeaders: Record<string, string> = {};
    request.headers.forEach((value, key) => (negotiatorHeaders[key] = value));

    // @ts-ignore locales are readonly
    const locales: string[] = i18n.locales;

    // Use negotiator and intl-localematcher to get best locale
    let languages = new Negotiator({ headers: negotiatorHeaders }).languages(
        locales
    );

    const locale = matchLocale(languages, locales, i18n.defaultLocale);

    return locale;
}


const PUBLIC_FILE = /\.(.*)$/;

export function middleware(request: NextRequest) {
    if (PUBLIC_FILE.test(request.nextUrl.pathname)) return; // чтобы нормально работали запросы к статике в папке public

    let response;
    let nextLocale;

    const { locales, defaultLocale } = i18n;

    const pathname = request.nextUrl.pathname;

    const pathLocale = locales.find(
        (locale) =>
            pathname.startsWith(`/${locale}/`) || pathname === `/${locale}`
    );

    if (pathLocale) {
        const isDefaultLocale = pathLocale === defaultLocale;
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
        const isFirstVisit = !request.cookies.has("NEXT_LOCALE");

        const locale = isFirstVisit ? getLocale(request) : request.cookies.get("NEXT_LOCALE")?.value;
        let newPath = `${locale}${pathname}`;

        if (request.nextUrl.search) newPath += request.nextUrl.search;

        response =
            locale === defaultLocale
                ? NextResponse.rewrite(new URL(newPath, request.url))
                : NextResponse.redirect(new URL(newPath, request.url));
        nextLocale = locale;
    }

    if (!response) response = NextResponse.next();

    if (nextLocale) response.cookies.set("NEXT_LOCALE", nextLocale);

    return response;
}

export const config = {
    // Matcher ignoring `/_next/` and `/api/`
    matcher: ["/((?!api|_next/static|_next/image|favicon.ico).*)"],
};
