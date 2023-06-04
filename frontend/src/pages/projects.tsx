import { NextPage } from "next";
import Meta from "@/components/seo/meta";
import SectionContainer from "@/components/containers/sectionContainer";


const ProjectsPage: NextPage = () => {
    return (
        <>
            <Meta title="ProjectsPage" description="ProjectsPage list" />
            <SectionContainer fullHeight id="index">
                ProjectsPage Page
            </SectionContainer>
        </>
    )
}

export default ProjectsPage