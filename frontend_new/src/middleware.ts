import { NextResponse, NextRequest } from "next/server";
import acceptLanguage from "accept-language";
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

    let response;

    // Check if there is any supported locale in the pathname
    const pathname = request.nextUrl.pathname;

    let lng: string | undefined = fallbackLng;

    const isFirstVisit = !request.cookies.has(cookieName);
    
    console.log("getLocale(request)", getLocale(request));

    if (request.cookies.has(cookieName)) {
        //lng = acceptLanguage.get(request.cookies.get(cookieName)?.value);
    }
    // if (!lng) lng = acceptLanguage.get(request.headers.get('Accept-Language'));
    // if (!lng) lng = fallbackLng;


    // Redirect if lng in path is not supported
    // if (
    //         !locales.some(loc => request.nextUrl.pathname.startsWith(`/${loc}`)) &&
    //         !request.nextUrl.pathname.startsWith('/_next')
    //     ) {
    //     return NextResponse.redirect(new URL(`/${lng}${request.nextUrl.pathname}`, request.url));
    // }

    


    // Check if the default locale is in the pathname
    if (
        pathname.startsWith(`/${lng}/`) ||
        pathname === `/${lng}`
    ) {
        // e.g. incoming request is /en/about
        // The new URL is now /about
        response = NextResponse.redirect(
            new URL(
                pathname.replace(
                    `/${lng}`,
                    pathname === `/${lng}` ? "/" : ""
                ),
                request.url
            )
        );
    }

    const pathnameIsMissingLocale = locales.every(
        (locale) =>
            !pathname.startsWith(`/${locale}/`) && pathname !== `/${locale}`
    );

    if (pathnameIsMissingLocale) {
        //lng = isFirstVisit ? getLocale(request) : request.cookies.get(cookieName)?.value;
        // We are on the default locale
        // Rewrite so Next.js understands

        // e.g. incoming request is /about
        // Tell Next.js it should pretend it's /en/about
        response = NextResponse.rewrite(
            new URL(`/${lng}${pathname}`, request.url)
        );
    }

    if (!response) response = NextResponse.next();

    response.cookies.set(cookieName, lng);

    if (request.headers.has('referer')) {
        // const refererUrl = new URL(request.headers.get('referer'));
        // const lngInReferer = locales.find((l) => refererUrl.pathname.startsWith(`/${l}`));
        // const response = NextResponse.next();
        // if (lngInReferer) response.cookies.set(cookieName, lngInReferer);
        // return response;
        //console.log("has('referer')");
    }

    console.log("lng", lng);

    return response;
}

export const config = {
    // Do not run the middleware on the following paths
    matcher:
        "/((?!api|_next/static|_next/image|manifest.json|assets|favicon.ico).*)",
};
