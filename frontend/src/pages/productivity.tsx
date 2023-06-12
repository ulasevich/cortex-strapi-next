import { NextPage } from "next";
import LazyLoad from 'react-lazyload';
import Meta from "@/components/seo/meta";
import SectionContainer from "@/components/containers/sectionContainer";
import ContactForm from "@/components/forms/contactForm";
import BlockPreloader from "@/components/extra/blockPreloader";


const ProductivityPage: NextPage = () => {
    return (
        <>
            <Meta title="Are your developers missing deadlines?" description="Meet quantified AI-enchased approach for software development productivity!" />
            <SectionContainer fullHeight id="index">
                <h1>index ProductivityPage ProductivityPage</h1>
                index ProductivityPage ProductivityPage
            </SectionContainer>
            <SectionContainer fullHeight id="second">
                second ProductivityPage ProductivityPage
            </SectionContainer>
            <SectionContainer fullHeight id="test">
                <br/><br/><br/><br/><br/><br/><br/>
                ProductivityPage ProductivityPage
                <br/><br/><br/><br/><br/><br/><br/>
            </SectionContainer>
            <SectionContainer fullHeight id="contact-form">
                <h3 style={{textAlign: 'center'}}>Lets Talk</h3>
                <br/>
                <LazyLoad 
                    height={400} 
                    className="contact-form-lazyload" 
                    offset={100} 
                    debounce={1000} 
                    placeholder={<BlockPreloader>Form loading</BlockPreloader>} 
                    once
                >
                    <ContactForm />
                </LazyLoad>
            </SectionContainer>
        </>
    )
}

export default ProductivityPage