import type { LocaleTypes } from '@/i18n/settings';
import { createTranslation } from '@/i18n/server';
import PageSection from '@/components/layout/pageSection';
import SectionHeading from '@/components/layout/sectionHeading';
import { ContactForm } from '@/views/contactForm';
// import "@/styles/no-locale.scss";

export default async function LandingPage({ params: { locale } }: { params: { locale: LocaleTypes } }) {
    const { t } = await createTranslation(locale, 'common');

    return (
        <>
            <PageSection fullHeight>
                <h1 className="text-2xl font-bold leading-7 text-gray-900 sm:truncate sm:text-3xl sm:tracking-tight">LandingPage</h1>
                LandingPage <button>btn: {t('control.know_more')}</button>
            </PageSection>
            <PageSection bgColor="yellow">
                <SectionHeading>Lets Talk</SectionHeading>
                <ContactForm />
            </PageSection>
        </>
    );
}
