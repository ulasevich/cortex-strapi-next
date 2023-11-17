import { Metadata } from 'next';
import { Locale, i18n } from '@/i18n-config';
import { Carlito } from "next/font/google";
import "@/styles/globals.scss";
import { getDictionary } from "@/get-dictionary";
import { Header } from "@/_components/layout/Header";
import { Footer } from "@/_components/layout/Footer";

const carlito = Carlito({
    weight: ["400", "700"],
    subsets: ["latin", "cyrillic"],
    display: "swap"
});

export async function generateStaticParams() {
    return i18n.locales.map((locale) => ({ lang: locale }))
}

type MetadataProps = {
    params: { lang: Locale }
}

export async function generateMetadata(
    { params }: MetadataProps): Promise<Metadata> {
    const dictionary = await getDictionary(params.lang);
    return {
        title: dictionary.meta.title,
        description: dictionary.meta.description,
        icons: {
            icon: "/favicon/favicon.svg",
            shortcut: "/favicon/favicon.ico",
            apple: '/favicon/apple-touch-icon.png'
        },
        manifest: '/manifest.json',
        appleWebApp: {
            title: dictionary.meta.title,
            statusBarStyle: "black-translucent"
        }
    }
};

export default function RootLayout({
    children,
    params
}: {
    children: React.ReactNode,
    params: { lang: Locale }
}) {
    

    return (
        <html lang={params.lang}>
            <body className={carlito.className}>
                <Header />
                {children}
                <Footer lang={params.lang} />
            </body>
        </html>
    );
}
