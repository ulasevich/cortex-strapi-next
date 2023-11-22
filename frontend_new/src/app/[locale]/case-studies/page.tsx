import { Locale } from '@/i18n-config';
import { getDictionary } from '@/get-dictionary';
import PageSection from "@/_components/layout/pageSection";

export default async function CasesPage({
    params: { locale },
}: {
    params: { locale: Locale }
}) {
    const dictionary = await getDictionary(locale);

    return (
        <PageSection fullHeight>
            <h1 className="text-2xl font-bold leading-7 text-gray-900 sm:truncate sm:text-3xl sm:tracking-tight">Cases List</h1>
            Case Page <button>btn: {dictionary.control.know_more}</button>
        </PageSection>
    )
}