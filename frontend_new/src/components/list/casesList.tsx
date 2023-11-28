"use client"

import { FC } from "react";
import Link from 'next/link';
import Image from 'next/image';
import parse from "html-react-parser";
import dompurify from "isomorphic-dompurify";
import { motion } from "framer-motion";

import { CaseProps, CasesPropsData } from "@/lib/types";

type CasesListProps = {
    cases: CasesPropsData
}

const CasesList: FC<CasesListProps> = ({ cases }): React.ReactElement => {
    const sanitizer = dompurify.sanitize;

    return (
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-3 md:gap-6">
            {cases.data.map((caseStudy: CaseProps) => {
                return (
                    <motion.div 
                        className="bg-white rounded-xl shadow-lg p-5 border border-white" key={caseStudy.id}
                        initial={{ opacity: 0, scale: 0.8 }}
                        whileInView={{ opacity: 1, scale: 1 }}
                        viewport={{ once: true }}
                    >
                        <div className="projects-item-content">
                            {caseStudy.attributes.preview_image?.data &&
                            <div className="flex justify-center mb-5">
                                <Image 
                                    src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${caseStudy.attributes.preview_image.data.attributes.url}`} 
                                    width={caseStudy.attributes.preview_image.data.attributes.width}
                                    height={caseStudy.attributes.preview_image.data.attributes.height}
                                    alt=""
                                />
                            </div>
                            }
                            
                            <div className="mb-5">
                                {parse(sanitizer(caseStudy.attributes.preview_text))} 
                            </div>
                            
                            <div className="text-center">
                                <Link href={`/case-studies/${caseStudy.attributes.code}`} className="text-amber-400 underline underline-offset-4">Подробнее</Link>
                            </div>
                        </div>
                    </motion.div>
                )
            })}
        </div>
    )
}

export default CasesList