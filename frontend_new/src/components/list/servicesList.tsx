import { FC } from "react";
import Image from 'next/image';
import parse from "html-react-parser";
import dompurify from "isomorphic-dompurify";
import { ServiceProps, ServicesProps } from "@/lib/types";

type ServicesListProps = {
    services: ServicesProps
}

const ServicesList: FC<ServicesListProps> = ({ services }): React.ReactElement => {
    const sanitizer = dompurify.sanitize;
    //console.log("cases", cases);

    return (
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-3 md:gap-6">
            {services.data.map((service: ServiceProps) => {
                return (
                    <div className="bg-white rounded-xl shadow-lg p-5 border border-white" key={service.id}>
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
                    </div>
                )
            })}
        </div>
    )
}

export default ServicesList