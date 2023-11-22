import { useParams } from 'next/navigation';
import { getDictionary } from "@/get-dictionary";
import { Locale } from "@/i18n-config";
import Link from "next/link";


export default async function Block404() {
    let locale = useParams()?.locale as Locale;
    const dictionary = await getDictionary(locale);

    return (
        <div>
            <h1 className="text-2xl font-bold leading-7 text-gray-900 sm:truncate sm:text-3xl sm:tracking-tight">{dictionary.error.page_not_found}</h1>
            <p>Could not find requested resource</p>
            <Link href="/">{dictionary.error.return_home}</Link>
        </div>
    );
};