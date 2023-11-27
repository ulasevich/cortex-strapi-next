import { Suspense } from "react";
import Image from "next/image";
import { notFound } from "next/navigation";
import parse from "html-react-parser";
import dompurify from "isomorphic-dompurify";

import { LocaleTypes } from "@/i18n/settings";
import { createTranslation } from '@/i18n/server';
import { fetchMainPage, fetchCases, fetchServices } from "@/lib/data";
import { MainPageProps, CasesProps, ServicesProps } from "@/lib/types";
import PageSection from "@/components/layout/pageSection";
import CasesList from "@/components/list/casesList";
import ServicesList from "@/components/list/servicesList";


export default async function Home({
    params: { locale },
}: {
    params: { locale: LocaleTypes }
}) {
    let dataMainPage:MainPageProps;
    let dataCases:CasesProps;
    let dataServices:ServicesProps

    try {
        dataMainPage = await fetchMainPage(locale);
        dataCases = await fetchCases(locale);
        dataServices = await fetchServices(locale);
    } catch(e) {
        console.log("MainPage error", e);
        notFound();
    }

    

    const {t} = await createTranslation(locale, "common");
    const sanitizer = dompurify.sanitize;

    return (
        <>
            <PageSection fullHeight bgCover={dataMainPage.data.attributes.main_bg.data} textWhite>
                <div className="flex flex-wrap gap-10 md:gap-20 items-start">
                    {dataMainPage.data.attributes.main_logo.data &&
                    <div className="shrink basis-full md:basis-auto flex justify-center">
                        <Image
                            src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${dataMainPage.data.attributes.main_logo.data.attributes.url}`}
                            width={dataMainPage.data.attributes.main_logo.data.attributes.width}
                            height={dataMainPage.data.attributes.main_logo.data.attributes.height}
                            alt={t("heading.cortex")}
                        />
                    </div> 
                    }
                    <div className="grow basis-0">
                        <h1 className="text-4xl text-neutral-300 font-bold uppercase mb-[1em]">{parse(sanitizer(dataMainPage.data.attributes.title))}</h1>
                        <div className="text-2xl">{parse(sanitizer(dataMainPage.data.attributes.detail_text))}</div>
                    </div>
                </div>
            </PageSection>
            <PageSection wNarrow>
                <h2>Companies Built</h2>
                <Suspense fallback={<p>Loading feed...</p>}>
                    <CasesList cases={dataCases} />
                </Suspense>
            </PageSection>
            <PageSection wNarrow bgColor="yellow">
                <h2>Our Services</h2>
                <ServicesList services={dataServices} />
            </PageSection>
            <PageSection>
                <h2>Why us</h2>
                <table className="default-table">
                    <thead>
                        <tr>
                            <th className="no-bg"></th>
                            <th className="default-column text-amber-400">Cortex Technology</th>
                            <th className="default-column">Accelerator or incubator</th>
                            <th className="default-column">Venture fund</th>
                            <th className="default-column">Consulting company</th>
                            <th className="default-column">Software development firm</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td className="default-row-name"> Technology development </td>
                            <td> <span className="color-green">Yes</span> </td>
                            <td> <span className="color-red">No</span> </td>
                            <td> <span className="color-red">No</span> </td>
                            <td> <span className="color-red">No</span> </td>
                            <td> <span className="color-green">Yes</span> </td>
                        </tr>
                        <tr>
                            <td className="default-row-name"> Business expertise </td>
                            <td> <span className="color-green">Yes</span> </td>
                            <td> <span className="color-green">Yes</span> </td>
                            <td> <span className="color-orange">Limited</span> </td>
                            <td> <span className="color-green">Yes</span> </td>
                            <td> <span className="color-red">No</span> </td>
                        </tr>
                    </tbody>
                </table>
            </PageSection>
            <PageSection>
                <h2>Our Focus</h2>
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                    Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </PageSection>
        </>
    );
}