import { notFound } from 'next/navigation';
import PageSection from '@/components/layout/pageSection';
import type { LocaleTypes } from '@/i18n/settings';
import { fetchCases } from '@/lib/data';
import type { CasesPropsData } from '@/lib/types';
import CasesList from '@/views/list/casesList';

export default async function CasesPage({ params: { locale } }: { params: { locale: LocaleTypes } }) {
    let dataCases: CasesPropsData;
    try {
        dataCases = await fetchCases(locale);
    } catch (e) {
        console.log('MainPage error', e);
        notFound();
    }
    return (
        <PageSection fullHeight>
            <h1 className="text-2xl font-bold leading-7 text-gray-900 sm:truncate sm:text-3xl sm:tracking-tight">Cases List</h1>
            <CasesList cases={dataCases} />
        </PageSection>
    );
}
