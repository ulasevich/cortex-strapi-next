import { LocaleTypes } from '@/i18n/settings';
//import { getDictionary } from '@/get-dictionary';
import { createTranslation } from '@/i18n/server';
import PageSection from "@/components/layout/pageSection";


export default async function LandingPage({
    params: { locale },
}: {
    params: { locale: LocaleTypes }
}) {
    //const dictionary = await getDictionary(locale);
    const {t} = await createTranslation(locale, "common");

    return (
        <PageSection fullHeight>
            <h1 className="text-2xl font-bold leading-7 text-gray-900 sm:truncate sm:text-3xl sm:tracking-tight">LandingPage</h1>
            LandingPage <button>btn: {t("control.know_more")}</button>
        </PageSection>
    )
}