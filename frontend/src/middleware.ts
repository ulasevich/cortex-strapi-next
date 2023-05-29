import { NextRequest, NextResponse } from 'next/server';
 
const PUBLIC_FILE = /\.(.*)$/;
 
export async function middleware(req: NextRequest) {
  if (
    req.nextUrl.pathname.startsWith('/') ||
    req.nextUrl.pathname.includes('/api/') ||
    PUBLIC_FILE.test(req.nextUrl.pathname)
  ) {
    return;
  }
  console.log('req ', req);
  console.log('req.cookies ', req.cookies);
  if (req.nextUrl.locale === 'en') {
    const locale = req.cookies.get('NEXT_LOCALE')?.value || 'en';
 
    return NextResponse.redirect(
      new URL(
        `/${locale}${req.nextUrl.pathname}${req.nextUrl.search}`,
        req.url,
      ),
    );
  }
}