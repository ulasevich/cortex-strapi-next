import { NextPage, GetStaticProps, GetStaticPaths } from "next";
import { useRouter } from 'next/router';
import * as qs from 'qs';
import { useTranslation } from 'next-i18next';
import { serverSideTranslations } from 'next-i18next/serverSideTranslations';
import Link from 'next/link';
import SectionContainer from '@/components/containers/sectionContainer';
import { fetcher } from "@/lib/api"
import { IProject, IProjectData } from "@/interfaces/project.interface";
import Meta from "@/components/seo/meta";

const ProjectPage: NextPage<IProjectData> = ({project}) => {
    //console.log(project);
    const { t } = useTranslation('common');
    const router = useRouter();

    if (router.isFallback) {
        return (
            <SectionContainer fullHeight id="index">
                Page loading ...
            </SectionContainer>
        )
    }
    else {
        return (
            <>
                <Meta 
                    title={`Проект ${project.data.attributes.name}`} 
                    description={`Описание проекта ${project.data.attributes.name}`} 
                    lang={project.data.attributes.locale} 
                />
                <SectionContainer fullHeight id="index">
                    <h1>{project.data.attributes.name}</h1>
                    <div>{`${process.env.NEXT_PUBLIC_STRAPI_URL}`}</div>
                    <div>
                        {project.data.attributes.detail_text}
                    </div>
                </SectionContainer>
                <SectionContainer id="project-facts" fullHeight>
                    <h3><span className="color-yellow">{t('project_facts')}</span></h3>
                    <div>{t('project_facts')}</div>
                </SectionContainer>
                <SectionContainer id="cortex-role">
                    <h3><span className="color-yellow">{t('cortex_role')}</span></h3>
                    <div>{t('cortex_role')}</div>
                </SectionContainer>
                <SectionContainer id="business-goals">
                    <h3><span className="color-yellow">{t('business_goals')}</span></h3>
                    <div>{t('business_goals')}</div>
                </SectionContainer>
                <SectionContainer id="technologies">
                    <h3><span className="color-yellow">{t('technologies')}</span></h3>
                    <div>{t('technologies')}</div>
                </SectionContainer>
                <SectionContainer id="development-timeline" bgColor="beige">
                    <h3><span className="color-yellow">{t('development_timeline')}</span></h3>
                    <div>{t('development_timeline')}</div>
                    <Link href="#index" scroll={false}>Ссылка</Link>
                    <a href={`#index`}>Ссылка</a>
                </SectionContainer>
            </>
        )
    }
}

export default ProjectPage


export const getStaticProps: GetStaticProps = async (context) => {
    try {
        const { params = {}, locale } = context;
        const query = qs.stringify(
            {
                fields: ['name', 'detail_text', 'locale', 'code'],
                populate: '*',
                locale: locale
            },
            {
                encodeValuesOnly: true, // prettify URL
            }
        );

        //const slug = context.params?.slug;

        
        const code = params?.code;
        const projectResponse: IProjectData = await fetcher(`${process.env.NEXT_STRAPI_URL_API}/projects/${code}?${query}`);
        const translations = await serverSideTranslations(locale as string, ["common"]);
        //console.log('projectResponse ', projectResponse);

        return {
            props: {
                project: projectResponse,
                ...translations,
            },
            revalidate: 3600,
        }
    } catch(e) {
        console.log('ProjectPage getStaticProps error', e);
        return { notFound: true };
    }
};

export const getStaticPaths: GetStaticPaths = async ({locales}: any) => {
    try {
        const projectsResponse = await fetcher(`${process.env.NEXT_STRAPI_URL_API}/projects`);

        //console.log('projectsResponse ', projectsResponse);
        //const pathsWithParams = projectsResponse.data.map((project: IProject) => ({ params: { code: project.attributes.code }, locale}));

        const paths = projectsResponse.data.flatMap((project: IProject) => {
            return locales.map((locale: string) => ({
                params: {
                    code: project.attributes.code,
                },
                locale,
            }));
        });

        //console.log('locales ', locales);
        //console.log('pathsWithParams ', paths);

        return {
            paths: paths,
            fallback: true // false | true | blocking
        }
    } catch (e) {
        console.error('e', e);
        return { 
            paths: [], 
            fallback: false,
        }
    }
}