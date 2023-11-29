"use client"

import { FC } from "react";
import Image from 'next/image';
import parse from "html-react-parser";
import dompurify from "isomorphic-dompurify";
import { motion } from "framer-motion";

import { ServiceProps, ServicesProps } from "@/lib/types";

type ServicesListProps = {
    services: ServicesProps
}

const ServicesList: FC<ServicesListProps> = ({ services }): React.ReactElement => {
    const sanitizer = dompurify.sanitize;

    return (
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-3 md:gap-6">
            {services.data.map((service: ServiceProps) => {
                return (
                    <motion.div 
                        className="bg-white rounded-xl shadow-md p-5 border border-neutral-100"
                        key={service.id}
                        initial={{ opacity: 0, y: 150 }}
                        whileInView={{ opacity: 1, y: 0 }}
                        viewport={{ once: true }}
                        transition={{
                            duration: 0.6
                        }}
                    >
                        <div className="service-item-content">
                            {service.attributes.preview_image?.data &&
                            <div className="text-center mb-5">
                                <Image 
                                    src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${service.attributes.preview_image.data.attributes.url}`} 
                                    width={service.attributes.preview_image.data.attributes.width}
                                    height={service.attributes.preview_image.data.attributes.height}
                                    alt=""
                                />
                            </div>
                            }
                            
                            <div className="preview_text">
                                {parse(sanitizer(service.attributes.preview_text))} 
                            </div>
                            
                        </div>
                    </motion.div>
                )
            })}
        </div>
    )
}

export default ServicesList