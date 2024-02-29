import Image from 'next/image';
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
            <PageSection fullHeight>
                <SectionHeading>Why us</SectionHeading>
                <Image src={`${process.env.NEXT_PUBLIC_STRAPI_URL}/uploads/bg_index_new_5e4c952d03.jpg`} width="900" height="589" alt="Test10" />
                <br />
                <br />
                <Image src="http://cx-test.com/strapi/uploads/bg_index_new_5e4c952d03.jpg" width="900" height="589" alt="Test21" />
                <br />
                <br />
                <Image src="http://cx-test.com/uploads/bg_index_new_5e4c952d03.jpg" width="900" height="589" alt="Test31" />
                <br />
                <br />
                <Image src="/strapi/uploads/bg_index_new_5e4c952d03.jpg" width="900" height="589" alt="Test2" />
                <br />
                <br />
                <Image src="/uploads/bg_index_new_5e4c952d03.jpg" width="900" height="589" alt="Test3" />
                <br />
                <br />
                <Image src="/test/nextjs-vs-reactjs.jpeg" width="900" height="589" alt="Test4" />
                <br />
                <br />
                <Image
                    src="https://learn.microsoft.com/ru-ru/azure/static-web-apps/media/deploy-nextjs/start-nextjs-app.png"
                    width="900"
                    height="589"
                    alt="Test5"
                />
                <br />
                <br />
            </PageSection>
            <PageSection bgColor="yellow">
                <SectionHeading>Lets Talk</SectionHeading>
                <ContactForm />
            </PageSection>
        </>
    );
}
