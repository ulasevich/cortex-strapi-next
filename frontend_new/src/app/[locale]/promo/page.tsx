import { Locale } from '@/i18n-config';
import { getDictionary } from '@/get-dictionary';
import PageSection from "@/_components/layout/pageSection";
import { getTranslations, unstable_setRequestLocale } from 'next-intl/server';

export default async function LandingPage({
    params: { locale },
}: {
    params: { locale: string }
}) {
    //const dictionary = await getDictionary(lang);

    // Enable static rendering
    unstable_setRequestLocale(locale);

    const t = await getTranslations({locale, namespace: 'control'});

    return (
        <PageSection fullHeight>
            <h1 className="text-2xl font-bold leading-7 text-gray-900 sm:truncate sm:text-3xl sm:tracking-tight">LandingPage</h1>
            LandingPage <button>btn: {t("know_more")}</button>
        </PageSection>
    )
}