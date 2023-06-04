import { FC, PropsWithChildren } from "react";
import Head from "next/head";
import { useRouter } from "next/router";
import { IMeta } from "./meta.interface";
import { getTitle } from "@/utils/api";

const Meta: FC<PropsWithChildren<IMeta>> = ({
    title,
    description,
    lang = "en",
    children,
}) => {
    const { asPath } = useRouter();
    const cleanPath = asPath.split('?')[0].split('#')[0];
    return (
        <>
            <Head>
                <title>{getTitle(title)}</title>
                {description ? (
                    <>
                        <meta name="description" content={description} />
                        <meta property="og:type" content="website" />
                        <meta property="og:site_name" content={process.env.NEXT_PUBLIC_SITE_HOST} />
                        <meta property="og:title" content={getTitle(title)} />
                        <meta property="og:description" content={description} />
                        <meta property="og:url" content={`${process.env.NEXT_PUBLIC_SITE_URL}${cleanPath}`} />
                        <meta property="og:locale" content={`${lang}_${lang?.toUpperCase()}`} />
                        <meta property="og:image" content={`${process.env.NEXT_PUBLIC_SITE_URL}/img/social_cover.jpg`} />
                        <meta name="twitter:title" content={getTitle(title)} />
                        <meta name="twitter:description" content={description} />
                        <meta name="twitter:image:src" content={`${process.env.NEXT_PUBLIC_SITE_URL}/img/social_cover.jpg`} />
                        <meta name="twitter:url" content={`${process.env.NEXT_PUBLIC_SITE_URL}${cleanPath}`} />
                        <meta name="twitter:domain" content={process.env.NEXT_PUBLIC_SITE_HOST} />
                        <link rel="canonical" href={`${process.env.NEXT_PUBLIC_SITE_URL}${cleanPath}`} />
                    </>
                ) : (
                    <meta name="robots" rel="nofollow, noindex" />
                )}
                <link rel="apple-touch-icon" sizes="180x180" href="/favicon/apple-touch-icon.png" />
                <link rel="icon" sizes="any" href="/favicon/favicon.ico" />
                <link rel="manifest" href="/favicon/manifest.json" />
                <link rel="mask-icon" href="/favicon/safari-pinned-tab.svg" color="#000000" />
                <link rel="shortcut icon" href="/favicon/favicon.ico" />
                <meta name="msapplication-config" content="/favicon/browserconfig.xml" />
                <meta name="apple-mobile-web-app-status-bar-style" content="#131313" />
                <meta name="theme-color" content="#131313" />
                {children}
            </Head>
        </>
    );
};

export default Meta;
