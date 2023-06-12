import { FC } from "react";
import { IService, IServicesData } from "@/interfaces/service.interface";
import Image from 'next/image';
import dompurify from "isomorphic-dompurify";
import parse from 'html-react-parser';

const ServicesList: FC<IServicesData> = ({ services }) => {
    const sanitizer = dompurify.sanitize;
    return (
        <div className="row services-row">
            {services && services?.data?.map((service: IService) => {
                //console.log(service);
                return (
                    <div className="col-md-4 col-sm-6 services-row__item" key={service.id}>
                        <div className="services-item-content">
                            <div className="services-item-logo">
                                {service.attributes.preview_image?.data &&
                                <div className="services-item-logo__image">
                                    <Image 
                                        src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${service.attributes.preview_image.data.attributes.url}`} 
                                        width={service.attributes.preview_image.data.attributes.width}
                                        height={service.attributes.preview_image.data.attributes.height}
                                        alt=""
                                    />
                                </div>
                                }
								<h4>{service.attributes.name}</h4>
                            </div>
							<div className="services-item-text">
                                <h4>{service.attributes.name}</h4>
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
