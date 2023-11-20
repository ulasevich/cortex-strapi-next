import { FC } from "react";
import Link from 'next/link';
import Image from 'next/image';
import parse from "html-react-parser";
import dompurify from "isomorphic-dompurify";
import { CaseProps, CasesProps } from "@/app/_lib/types";

type CasesListProps = {
    cases: CasesProps
}

const CasesList: FC<CasesListProps> = ({ cases }): React.ReactElement => {
    const sanitizer = dompurify.sanitize;
    console.log("cases", cases);

    return (
        <div className="row projects-row">
            {cases.data.map((caseStudy: CaseProps) => {
                console.log(process.env.NEXT_PUBLIC_STRAPI_URL);
                return (
                    <div className="col-md-4 col-sm-6 projects-row__item" key={caseStudy.id}>
                        <div className="projects-item-content">
                            {caseStudy.attributes.preview_image?.data &&
                            <div className="projects-item-logo">
                                <Image 
                                    src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${caseStudy.attributes.preview_image.data.attributes.url}`} 
                                    width={caseStudy.attributes.preview_image.data.attributes.width}
                                    height={caseStudy.attributes.preview_image.data.attributes.height}
                                    alt=""
                                />
                            </div>
                            }
                            
                            <div className="preview_text">
                                {parse(sanitizer(caseStudy.attributes.preview_text))} 
                            </div>
                            
                            <div className="projects-item-detail-link align-center">
                                <Link href={`/case-studies/${caseStudy.attributes.code}`} className="more-btn">Подробнее</Link>
                            </div>
                        </div>
                    </div>
                )
            })}
        </div>
    )
}

export default CasesList