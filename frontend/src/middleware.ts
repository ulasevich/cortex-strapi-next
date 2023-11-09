import { NextResponse } from 'next/server';
import type { NextRequest } from 'next/server';

const PUBLIC_FILE = /\.(.*)$/;

export async function middleware(req: NextRequest) {

    const acceptLanguage = req.headers.get('accept-language');    
    
    if (
        req.nextUrl.pathname.startsWith("/_next") ||
        req.nextUrl.pathname.includes("/api/") ||
        PUBLIC_FILE.test(req.nextUrl.pathname)
    ) {
        return;
    }
    
    // if (acceptLanguage ==="ru" && req.nextUrl.locale !== "ru") {
    //     console.log('111111', acceptLanguage);
    //     return NextResponse.redirect(
    //        new URL(`/ru${req.nextUrl.pathname}${req.nextUrl.search}`, req.url)
    //     );
    // }

    // if (req.nextUrl.locale === "en") {
    //     const locale = req.cookies.get('NEXT_LOCALE')?.value || 'en';
    //     return NextResponse.redirect(
    //         new URL(`/${locale}${req.nextUrl.pathname}${req.nextUrl.search}`, req.url)
    //     );
    // }
    return NextResponse.next();
    
}

export const config = {
    matcher: [
        /*
        * Match all request paths except for the ones starting with:
        * - api (API routes)
        * - _next/static (static files)
        * - _next/image (image optimization files)
        * - favicon.ico (favicon file)
        */
        '/((?!api|_next/static|_next/image|favicon.ico).*)',
    ],
}
