import { Locale } from '@/i18n-config';
import { getDictionary } from '@/get-dictionary';

export default async function LandingPage({
    params: { lang },
}: {
    params: { lang: Locale }
}) {
    const dictionary = await getDictionary(lang);

    return (
        <div>
            <h1 className="text-2xl font-bold leading-7 text-gray-900 sm:truncate sm:text-3xl sm:tracking-tight">LandingPage</h1>
            LandingPage <button>btn: {dictionary.control.know_more}</button>
        </div>
    )
}