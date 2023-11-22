import { Metadata } from 'next';
import { Locale, i18n } from '@/i18n-config';
import { Carlito } from "next/font/google";
import "@/styles/globals.scss";
import { getDictionary } from "@/get-dictionary";
import { Header } from "@/_components/layout/header";
import { Footer } from "@/_components/layout/footer";

const carlito = Carlito({
    weight: ["400", "700"],
    subsets: ["latin", "cyrillic"],
    display: "swap"
});

export async function generateStaticParams() {
    return i18n.locales.map((locale) => ({ locale: locale }))
}

type MetadataProps = {
    params: { locale: Locale }
}

export async function generateMetadata(
    { params }: MetadataProps): Promise<Metadata> {
    const dictionary = await getDictionary(params.locale);
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
    params: { locale: Locale }
}) {
    

    return (
        <html lang={params.locale}>
            <body className={carlito.className}>
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