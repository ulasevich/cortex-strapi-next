import { FC } from "react";
import { useTranslation } from 'next-i18next';
import Link from 'next/link';
import Image from 'next/image';
import dompurify from "isomorphic-dompurify";
import parse from 'html-react-parser';
import { IProject, IProjectsData } from "@/interfaces/project.interface";

const ProjectsList: FC<IProjectsData> = ({ projects }) => {
    const { t } = useTranslation('common');
    const sanitizer = dompurify.sanitize;
    return (
        <div className="row projects-row">
            {projects && projects?.data?.map((project: IProject) => {
                return (
                    <div className="col-md-4 col-sm-6 projects-row__item" key={project.id}>
                        <div className="projects-item-content">
                            {project.attributes.preview_image?.data &&
                            <div className="projects-item-logo">
                                <Image 
                                    src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${project.attributes.preview_image.data.attributes.url}`} 
                                    width={project.attributes.preview_image.data.attributes.width}
                                    height={project.attributes.preview_image.data.attributes.height}
                                    alt=""
                                />
                            </div>
                            }
                            <h3>{project.attributes.name}</h3>
                            
                            <div className="preview_text">
                                {parse(sanitizer(project.attributes.preview_text))} 
                            </div>
                            
                            <div className="projects-item-detail-link align-center">
                                <Link href={`/projects/${project.attributes.code}`} className="more-btn">{t('know_more')}</Link>
                            </div>
                        </div>
                    </div>
                )
            })}
        </div>
    )
}

export default ProjectsList
