import { FC } from "react";
import { IService, IServicesData } from "@/interfaces/service.interface";

const ServicesList: FC<IServicesData> = ({ services }) => {
    return (
        <div className="row projects-row">
            {services && services?.data?.map((service: IService) => {
                
                return (
                    <div className="col-md-4 col-sm-6 projects-row__item" key={service.id}>
                        <div className="projects-item-content">
                            {service.attributes.preview_image?.data &&
                            <div className="projects-item-logo">
                                
                            </div>
                            }
                            <h3>{service.attributes.name}</h3>

                            {service.attributes.preview_text ??
                            <div className="preview_text">                         
                                {service.attributes.preview_text}
                            </div>
                            }
                            
                        </div>
                    </div>
                )
            })}
        </div>
    )
}

export default ServicesList
