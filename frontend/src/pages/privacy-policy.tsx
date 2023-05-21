import { NextPage } from "next";
import MainLayout from '@/components/layouts/mainLayout';


const PrivacyPolicyPage: NextPage = () => {
    return (
        <MainLayout title="Privacy Policy" description="Privacy Description">
            Privacy Policy Page
        </MainLayout>
    )
}

export default PrivacyPolicyPage