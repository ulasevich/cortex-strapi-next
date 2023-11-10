import { NextPage, GetStaticProps } from "next";
import { useTranslation } from 'next-i18next';
import { serverSideTranslations } from 'next-i18next/serverSideTranslations';
import Link from 'next/link';
import Meta from '@/components/seo/meta';
import SectionContainer from '@/components/containers/sectionContainer';

const Page404: NextPage = () => {
    const { t } = useTranslation('common');
    return (
        <>
            <Meta title={`404 - ${t('page_not_found')}`} description="" />
            <SectionContainer fullHeight>
                <h1>404 - {t('page_not_found')}</h1>
                <div>
                    <Link href="/">{t('go_back_home')}</Link>
                </div>
            </SectionContainer>
        </>
    )
}

export default Page404

export const getStaticProps: GetStaticProps = async (context) => {
    const translations = await serverSideTranslations(context.locale as string, ["common"]);
    return {
        props: {
			...translations,
		},
    }
}
