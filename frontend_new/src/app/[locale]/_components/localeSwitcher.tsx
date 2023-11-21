"use client";

import React from 'react';
import { useRouter, useParams, useSelectedLayoutSegments } from "next/navigation";
import { i18n } from "@/i18n-config";
import { getDictionary } from "@/get-dictionary";

export default function LocaleSwitcher() {
    const router = useRouter();
    const params = useParams();
    const urlSegments = useSelectedLayoutSegments();

    //const dictionary = await getDictionary(props.lang);

    const langChange = (e: React.ChangeEvent<{ value: string }>) => {
        const newLocale = e.target.value;

        // This is used by the Header component which is used in `app/[locale]/layout.tsx` file,
        // urlSegments will contain the segments after the locale.
        // We replace the URL with the new locale and the rest of the segments.
        router.push(`/${newLocale}/${urlSegments.join('/')}`);
    };

    return (
        <>
            <p>Locale switcher:</p>
            <select onChange={langChange} value={params.lang} className="text-neutral-900">
                {i18n.locales.map((locale) => {
                    return (
                        <option 
                            value={locale}
                            key={locale}
                        >
                            {locale}
                        </option>
                    );
                })}
            </select>
        </>
    );
}
