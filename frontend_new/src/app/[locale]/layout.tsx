import { Metadata } from 'next';
import NextTopLoader from 'nextjs-toploader';
import { Carlito } from "next/font/google";

import { locales, LocaleTypes } from "@/i18n/settings";
import { createTranslation } from '@/i18n/server';

import "@/styles/globals.scss";
import { Header } from "@/components/layout/header";
import { Footer } from "@/components/layout/footer";

const carlito = Carlito({
    weight: ["400", "700"],
    subsets: ["latin", "cyrillic"],
    display: "swap"
});

export async function generateStaticParams() {
    return locales.map((locale) => ({ locale: locale }))
}

type MetadataProps = {
    params: { locale: LocaleTypes }
}

export async function generateMetadata(
    { params }: MetadataProps): Promise<Metadata> {

    const {t} = await createTranslation(params.locale, "meta");

    return {
        title: t("title"),
        description: t("description"),
        icons: {
            icon: "/favicon/favicon.svg",
            shortcut: "/favicon/favicon.ico",
            apple: '/favicon/apple-touch-icon.png'
        },
        manifest: '/manifest.json',
        appleWebApp: {
            title: t("title"),
            statusBarStyle: "black-translucent"
        }
    }
};

export default function RootLayout({
    children,
    params
}: {
    children: React.ReactNode,
    params: { locale: LocaleTypes }
}) {
    return (
        <html lang={params.locale}>
            <body className={carlito.className}>
                <NextTopLoader
                    color="#FBBF24"
                    height={4}
                    shadow="0 0 10px #FBBF24,0 0 5px #FBBF24"
                    showSpinner={false}
                    zIndex={150}
                />
                <div className="cx-layout">
                    <Header locale={params.locale} />
                    <main className="cx-layout__main text-base md:text-lg">
                        {children}
                    </main>
                    <Footer locale={params.locale} />
                </div>
            </body>
        </html>
    );
}