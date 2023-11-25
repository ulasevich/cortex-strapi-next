"use client"

import Link from 'next/link';
import { useParams } from 'next/navigation';
import { LocaleTypes } from '@/i18n/settings';
import { useTranslation } from '@/i18n/client';
import PageSection from '@/components/layout/pageSection';
import { Metadata } from 'next';

export const metadata: Metadata = {
    title: 'Not Found',
    description: "description",
    robots: "noindex, nofollow"
};

export default function NotFound() {
    const locale = useParams()?.locale as LocaleTypes;
    const {t} = useTranslation(locale, "error");

    return (
        <PageSection fullHeight className="text-center">
            <h1 className="text-2xl font-bold leading-7 text-gray-900 sm:truncate sm:text-3xl sm:tracking-tight">{t("page_not_found")}</h1>
            <p>Could not find requested resource</p>
            <Link href="/">{t("return_home")}</Link>
        </PageSection>
    )
}