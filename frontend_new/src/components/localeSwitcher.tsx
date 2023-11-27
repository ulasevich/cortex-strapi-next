'use client';
import React from 'react';
import {useRouter, useParams, useSelectedLayoutSegments} from 'next/navigation';
import { locales } from "@/i18n/settings";


export default function LocaleSwitcher() {
    const router = useRouter();
    const params = useParams();
    const urlSegments = useSelectedLayoutSegments();

    const handleLocaleChange = (e: React.ChangeEvent<{ value: string }>) => {
        const newLocale = e.target.value;
    
        // This is used by the Header component which is used in `app/[locale]/layout.tsx` file,
        // urlSegments will contain the segments after the locale.
        // We replace the URL with the new locale and the rest of the segments.
        router.push(`/${newLocale}/${urlSegments.join('/')}`);
    };

    return (
        <select onChange={handleLocaleChange} value={params.locale} className="cx-locale-switcher text-neutral-900">
            {locales.map((lang) => (
                <option key={lang} value={lang}>
                    {lang}
                </option>
            ))}
        </select>
    );
}
