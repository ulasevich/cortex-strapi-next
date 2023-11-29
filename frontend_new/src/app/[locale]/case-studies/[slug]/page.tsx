import Image from "next/image";
import parse from "html-react-parser";
import dompurify from "isomorphic-dompurify";
import { notFound } from "next/navigation";

import PageSection from '@/components/layout/pageSection';
import { CasePropsData } from '@/lib/types';
import { fetchCaseDetail } from '@/src/lib/data';
import SectionHeading from "@/components/layout/sectionHeading";


export default async function Page({
    params: { locale, slug }
}: {
    params: { locale: string, slug: string }
}) {
    let dataCaseDetail:CasePropsData;
    try {
        dataCaseDetail = await fetchCaseDetail(locale, slug);
    } catch(e) {
        console.log("CaseDetail error", e);
        notFound();
    }

    const sanitizer = dompurify.sanitize;

    return (
        <>
            <PageSection fullHeight>
                <div className="flex flex-wrap gap-10 md:gap-20 items-start">
                    {dataCaseDetail.data.attributes.preview_image?.data &&
                    <div className="shrink basis-full md:basis-auto flex justify-center">
                        <Image
                            src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${dataCaseDetail.data.attributes.preview_image.data.attributes.url}`}
                            width={dataCaseDetail.data.attributes.preview_image.data.attributes.width}
                            height={dataCaseDetail.data.attributes.preview_image.data.attributes.height}
                            alt={dataCaseDetail.data.attributes.name}
                            className="cx-view-transition-logo"
                        />
                    </div> 
                    }
                    <div className="grow basis-0">
                        <h1 className="text-3xl font-bold mb-3">{dataCaseDetail.data.attributes.name}</h1>
                        <div>
                            {parse(sanitizer(dataCaseDetail.data.attributes.detail_text))}
                        </div>
                    </div>
                </div>
            </PageSection>
            <PageSection id="project-facts" fullHeight>
                <SectionHeading>Project facts</SectionHeading>
                <div>project_facts</div>
            </PageSection>
            <PageSection id="cortex-role">
                <SectionHeading>Cortex role</SectionHeading>
                <div>cortex_role</div>
            </PageSection>
        </>
    )
}