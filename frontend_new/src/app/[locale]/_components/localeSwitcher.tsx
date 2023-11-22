import { getDictionary } from "@/get-dictionary";
import LocaleSwitcherSelect from "./localeSwitcherSelect";
import { locales, defaultLocale, Locale } from '@/i18n-config';


type LocaleSwitcherProps = {
    locale: Locale
}

export default async function LocaleSwitcher(props: LocaleSwitcherProps) {
    const dictionary = await getDictionary(props.locale);

    return (
        <LocaleSwitcherSelect>
            {locales.map((lang) => (
                <option key={lang} value={lang}>
                    {dictionary.lang[lang]}
                </option>
            ))}
        </LocaleSwitcherSelect>
    );
}
