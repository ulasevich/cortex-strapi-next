import { NextPage, GetStaticProps, GetStaticPaths } from "next";
import * as qs from 'qs';
import SectionContainer from '@/components/containers/sectionContainer';
import { fetcher } from "@/lib/api"
import { IProject, IProjectData } from "@/interfaces/project.interface";
import Meta from "@/components/seo/meta";

const ProjectPage: NextPage<IProjectData> = ({project}) => {
    console.log(project);
    return (
        <>
            <Meta title={`Проект ${project.data.attributes.name}`} description={`Описание проекта ${project.data.attributes.name}`} />
            <SectionContainer>
                <h1>{project.data.attributes.name}</h1>
                <div>{`${process.env.NEXT_PUBLIC_STRAPI_URL}`}</div>
                <div>
                    {project.data.attributes.detail_text}
                </div>
            </SectionContainer>
            <SectionContainer>
                <h3>Факты о <span className="color-yellow">Проекте</span></h3>
                <div>Факты</div>
            </SectionContainer>
            <SectionContainer>
                <h3>Бизнес <span className="color-yellow">цели</span></h3>
                <div>Бизнес цели</div>
            </SectionContainer>
        </>
    )
}

export default ProjectPage


export const getStaticProps: GetStaticProps = async (context) => {
    const { params = {}, locale } = context;
    const query = qs.stringify(
        {
            fields: ['name', 'detail_text', 'locale', 'slug', 'code'],
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
    //console.log('projectResponse ', projectResponse);
    if (!projectResponse) {
        return {
            props: { hasError: true },
        }
    }

    return {
        props: {
            project: projectResponse
        }
    }
};

export const getStaticPaths: GetStaticPaths = async () => {
    const projectsResponse = await fetcher(`${process.env.NEXT_STRAPI_URL_API}/projects`);
    //console.log('projectsResponse ', projectsResponse);
    const pathsWithParams = projectsResponse.data.map((project: IProject) => ({ params: { code: project.attributes.code }}));
    //console.log('pathsWithParams ', pathsWithParams);
    return {
        paths: pathsWithParams,
        fallback: false,
    }
}