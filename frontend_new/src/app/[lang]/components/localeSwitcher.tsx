"use client";

import { usePathname, useRouter } from "next/navigation";
import { Locale, i18n } from "@/i18n-config";
import { getDictionary } from "@/get-dictionary";

type LocaleSwitcherProps = {
    lang: Locale
}

export default async function LocaleSwitcher(props: LocaleSwitcherProps) {
    const router = useRouter();

    const pathName = usePathname();
    const redirectedPathName = (locale: string) => {
        if (!pathName) return "/";
        const segments = pathName.split("/");
        segments[1] = locale;
        return segments.join("/");
    };

    const dictionary = await getDictionary(props.lang);

    

    const langChange = (e: React.ChangeEvent<{ value: string }>) => {
        console.log(redirectedPathName(e.target.value));
        router.push(redirectedPathName(e.target.value));
    };

    return (
        <>
            <p>Locale switcher:</p>
            <select onChange={langChange} value={props.lang}>
                {i18n.locales.map((locale) => {
                    return (
                        <option 
                            value={locale}
                            key={locale}
                        >
                            {dictionary.lang[locale]}
                        </option>
                    );
                })}
            </select>
        </>
    );
}
