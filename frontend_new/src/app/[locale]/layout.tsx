import { ReactNode } from 'react';
import { Metadata } from "next";
import { notFound } from "next/navigation";
import {getTranslations, unstable_setRequestLocale} from 'next-intl/server';
import { locales } from '@/src/config';
// import { Locale, i18n, locales } from "@/i18n-config";
import { Carlito } from "next/font/google";
import "@/styles/globals.scss";
//import { getDictionary } from "@/get-dictionary";
import { Header } from "@/_components/layout/header";
import { Footer } from "@/_components/layout/footer";
import { NextIntlClientProvider } from 'next-intl';


const carlito = Carlito({
    weight: ["400", "700"],
    subsets: ["latin", "cyrillic"],
    display: "swap",
});

export function generateStaticParams() {
    return locales.map((locale) => ({locale}));
}

// type MetadataProps = {
//     params: { locale: Locale };
// };

type Props = {
    children: ReactNode,
    params: { locale: string }
};

export async function generateMetadata({
    params: { locale }
  }: Omit<Props, 'children'>) {
    //const dictionary = await getDictionary(params.lang);
    const t = await getTranslations({locale, namespace: 'meta'});

    return {
        title: t('title'),
        description: t('description'),
        icons: {
            icon: "/favicon/favicon.svg",
            shortcut: "/favicon/favicon.ico",
            apple: "/favicon/apple-touch-icon.png",
        },
        manifest: "/manifest.json",
        appleWebApp: {
            title: t('title'),
            statusBarStyle: "black-translucent",
        },
    };
}

export default async function LocaleLayout({
    children,
    params: {locale}
  }: Props) {

    // Validate that the incoming `locale` parameter is valid
    if (!locales.includes(locale as any)) notFound();

    // Enable static rendering
    unstable_setRequestLocale(locale);

    return (
        <html lang={locale}>
            <body className={carlito.className}>
                <div className="cx-layout">
                    <Header />
                    <main className="cx-layout__main text-base md:text-lg">
                        {children}
                    </main>
                    <Footer locale={locale} />
                </div>
            </body>
        </html>
    );
}
