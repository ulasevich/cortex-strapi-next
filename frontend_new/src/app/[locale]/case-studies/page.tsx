import PageSection from "@/components/layout/pageSection";
import { LocaleTypes } from "@/i18n/settings";

export default async function CasesPage({
    params: { locale },
}: {
    params: { locale: LocaleTypes }
}) {

    return (
        <PageSection fullHeight>
            <h1 className="text-2xl font-bold leading-7 text-gray-900 sm:truncate sm:text-3xl sm:tracking-tight">Cases List</h1>
        </PageSection>
    )
}