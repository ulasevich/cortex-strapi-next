import { NextPage } from "next";
import Meta from "@/components/seo/meta";
import SectionContainer from "@/components/containers/sectionContainer";


const PrivacyPolicyPage: NextPage = () => {
    return (
        <>
            <Meta title="Privacy Policy" description="Privacy Description" />
            <SectionContainer fullHeight id="index">
                Privacy Policy Page
            </SectionContainer>
        </>
    )
}

export default PrivacyPolicyPage