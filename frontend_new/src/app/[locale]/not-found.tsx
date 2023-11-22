//"use client"
import { useParams } from 'next/navigation';
import Link from 'next/link';
import { Locale } from '@/i18n-config';
//import { getDictionary } from "@/get-dictionary";
import PageSection from '@/_components/layout/pageSection';
import Block404 from '@/_components/error/block404';


export default async function NotFound() {
    //let locale = useParams()?.locale as Locale;
    //const dictionary = await getDictionary(locale);

    return (
        <PageSection fullHeight className="text-center">
            {/* <h1 className="text-2xl font-bold leading-7 text-gray-900 sm:truncate sm:text-3xl sm:tracking-tight">{dictionary.error.page_not_found}</h1>
            <p>Could not find requested resource</p>
            <Link href="/">{dictionary.error.return_home}</Link> */}
            <Block404 />
        </PageSection>
    )
}