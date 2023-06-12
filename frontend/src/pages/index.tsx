import { NextPage, GetStaticProps } from "next";
//import { useRouter } from 'next/router';
//import { AnimationOnScroll } from 'react-animation-on-scroll';
import { useTranslation } from "next-i18next";
import { serverSideTranslations } from "next-i18next/serverSideTranslations";
import Image from "next/image";
import dompurify from "isomorphic-dompurify";
import parse from 'html-react-parser';
import * as qs from "qs";
import { fetcher } from "@/lib/api";
import { IProjectsData } from "@/interfaces/project.interface";
import ProjectsList from "@/components/lists/projectsList";
import { IServicesData } from "@/interfaces/service.interface";
import ServicesList from "@/components/lists/servicesList";
import { IMainPageData } from "@/interfaces/main.page.interface";
import SectionContainer from "@/components/containers/sectionContainer";
import Meta from "@/components/seo/meta";

const IndexPage: NextPage<IMainPageData & IProjectsData & IServicesData> = ({
    main_page,
    projects,
    services,
}) => {
    //console.log(main_page);
    //console.log("main_bg", main_page.data.attributes.main_bg.data);
    //const router = useRouter();
    const sanitizer = dompurify.sanitize;
    const { t } = useTranslation("common");
    return (
        <>
            <Meta title="Welcome" description="" />
            <SectionContainer fullHeight bgColor="dark" bgCover={main_page.data.attributes.main_bg.data} id="index">
                <div className="row row-index-block">
                    <div className="col-md-3 index-block-arrow">
                        {main_page.data.attributes.main_logo.data &&
                        <div className="big-logo-block">
                            <Image
                                src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${main_page.data.attributes.main_logo.data.attributes.url}`}
                                width={main_page.data.attributes.main_logo.data.attributes.width}
                                height={main_page.data.attributes.main_logo.data.attributes.height}
                                alt="Cortex"
                            />
                        </div>
                        }
                    </div>

                    <div className="col-md-6 index-block-text">
                        <h3 className="h3-small uppercase">
                            {parse(sanitizer(main_page.data.attributes.title))}
                        </h3>
                        <div className="middle-text">
                            {parse(sanitizer(main_page.data.attributes.detail_text))}
                        </div>
                    </div>
                </div>
            </SectionContainer>

            <SectionContainer id="companies-built">
                <h3><span className="color-yellow">{t("companies_built")}</span></h3>
                <ProjectsList projects={projects} />
            </SectionContainer>

            <SectionContainer id="our-services" bgColor="beige">
                <h3><span className="color-yellow">{t("our_services")}</span></h3>
                <ServicesList services={services} />
            </SectionContainer>

            <SectionContainer id="why-us">
                <h3><span className="color-yellow">{t("why_us")}</span></h3>
                {t("why_us")}
            </SectionContainer>

            <SectionContainer id="our-focus" bgColor="beige">
                <h3><span className="color-yellow">{t("our_focus")}</span></h3>
                {t("our_focus")}
            </SectionContainer>

            <SectionContainer id="our-achievements">
                <h3><span className="color-yellow">{t("our_achievements")}</span></h3>
                {t("our_achievements")}
            </SectionContainer>

            <SectionContainer id="clients-say" bgColor="beige">
                <h3><span className="color-yellow">{t("clients_say")}</span></h3>
                {t("clients_say")}
            </SectionContainer>
        </>
    );
};

export default IndexPage;

export const getStaticProps: GetStaticProps = async ({ locale }) => {
    const page_query = {
        index: qs.stringify(
            {
                fields: ["title", "detail_text", "locale"],
                populate: "*",
                locale: locale,
            },
            { encodeValuesOnly: true }
        ),
        default: qs.stringify(
            {
                fields: ["name", "preview_text", "locale", "code", "sort"],
                populate: ["preview_image"],
                locale: locale,
            },
            { encodeValuesOnly: true }
        ),
    };

    try {

        const mainPageResponse: IMainPageData = await fetcher(
            `${process.env.NEXT_PUBLIC_API_URL}/main-page?${page_query.index}`
        );
        const projectsResponse: IProjectsData = await fetcher(
            `${process.env.NEXT_PUBLIC_API_URL}/projects?${page_query.default}`
        );
        const servicesResponse: IServicesData = await fetcher(
            `${process.env.NEXT_PUBLIC_API_URL}/our-services?${page_query.default}`
        );

        return {
            props: {
                main_page: mainPageResponse,
                projects: projectsResponse,
                services: servicesResponse,
                ...(await serverSideTranslations(locale as string, ["common"])),
            },
        };
    } 
    catch (e) {
        console.log('IndexPage getStaticProps error', e);
        return { 
            notFound: true
        };
    }
};
