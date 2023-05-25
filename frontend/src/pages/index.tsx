import { NextPage, GetStaticProps } from 'next';
//import { useRouter } from 'next/router';
import { useTranslation } from 'next-i18next'
import * as qs from 'qs';
//import { AnimationOnScroll } from 'react-animation-on-scroll';
import { fetcher } from "@/lib/api"
import { IProjectsData } from "@/interfaces/project.interface";
import ProjectsList from "@/components/lists/projectsList";
import { IServicesData } from "@/interfaces/service.interface";
import ServicesList from "@/components/lists/servicesList";
import SectionContainer from '@/components/containers/sectionContainer';
import Meta from '@/components/seo/meta';


const IndexPage: NextPage<IProjectsData & IServicesData> = ({projects, services}) => {
    console.log(projects);
    //const router = useRouter();
    const { t } = useTranslation('common');
    return (
        <>
            <Meta title="Welcome" description="" />
            <SectionContainer>
                <div className="row row-index-block">
					<div className="col-md-3 index-block-arrow">
                            <div className="big-logo-block">
                                LOGO
                            </div>
					</div>
                    
					<div className="col-md-6 index-block-text">
                            <h3 className="h3-small uppercase">МЫ ПРЕДЛАГАЕМ ИННОВАЦИОННЫЕ ПРЕДПРИЯТИЯ.<br/>ПОД КЛЮЧ.</h3>
                            <div className="middle-text">
                                <p>Мы создаем технологические проектные компании для совместных предприятий, предпринимателей и профессионалов, добившихся успеха в традиционных отраслях, чтобы воплотить их видение в предприятия, которые возглавят преобразования и будут управлять новой экономикой.</p>
                                <p>Мы позволяем основателям пропускать шаги, защищаем их от повторного изобретения велосипеда, ограждаем от рутины, позволяя им сосредоточиться на инновациях, развитии клиентов и отношениях с инвесторами.</p>
                                <p>Мы практикуем инвестиции в технологии, когда впечатляющие идеи получают базовые технологии, консультации и платежную инфраструктуру за символическую плату.</p>
                            </div>
					</div>
				</div>
            </SectionContainer>
            
            <SectionContainer>
                <h3><span className="color-yellow">{t('companies_built')}</span></h3>
                <ProjectsList projects={projects} />
            </SectionContainer>

            <SectionContainer>
                <h3><span className="color-yellow">{t('our_services')}</span></h3>
                <ServicesList services={services} />
            </SectionContainer>

            <SectionContainer>
                <h3>Наш <span className="color-yellow">Сервис</span></h3>
                Lorem ipsum
            </SectionContainer>

            <SectionContainer>
                    <h3>Наш <span className="color-yellow">Сервис</span></h3>
                    Lorem ipsum
            </SectionContainer>
        </>
    )
}

export default IndexPage;

export const getStaticProps: GetStaticProps = async ({ locale }) => {
    const page_query = {
        default: qs.stringify(
            {
                fields: ['name', 'preview_text', 'locale', 'slug', 'code', 'sort'],
                populate: ['preview_image'],
                locale: locale
            },
            { encodeValuesOnly: true }
        )
    }
    
    const projectsResponse: IProjectsData = await fetcher(`${process.env.NEXT_STRAPI_URL_API}/projects?${page_query.default}`);
    const servicesResponse: IServicesData = await fetcher(`${process.env.NEXT_STRAPI_URL_API}/our-services?${page_query.default}`);
    return {
        props: {
            projects: projectsResponse,
            services: servicesResponse
        }
    }
}