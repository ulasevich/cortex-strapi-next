//"use client"
import { redirect, usePathname, useParams } from 'next/navigation';
import Link from 'next/link';
import PageSection from '@/_components/layout/pageSection';
import { getDictionary, getDictionaryServer } from "@/get-dictionary";
import { useTranslations } from 'next-intl';
import { Locale } from '@/i18n-config';

//import { getLocale } from "next-intl/server";


export default async function NotFound() {
    //const t = useTranslations("error");

    let locale = "ru";
    //console.log("getLocale", locale);
    let www:any;
    const dictionary = await getDictionary(locale).then((value) => {
        console.log("value", value);
        www = value;
    });
    console.log("getDictionaryServer", dictionary);
    console.log("locale", locale);
    //const pathname = usePathname();
    //console.log("pathname", pathname);
    return (
        <PageSection fullHeight className="text-center">
            <h1 className="text-2xl font-bold leading-7 text-gray-900 sm:truncate sm:text-3xl sm:tracking-tight">404</h1>
            <p>Could not find requested resource</p>
            <Link href="/">Return Home 123</Link>
        </PageSection>
    )
}