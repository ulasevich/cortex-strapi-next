import * as qs from "qs";
import { useRouter } from "next/router";
import useSWR from "swr";
import dompurify from "isomorphic-dompurify";
import parse from "html-react-parser";
import SectionContainer from "../containers/sectionContainer";

interface IOfficeContact {
    id: number;
    title: string;
    address: string;
}

interface IFooterBg {
    attributes: {
        url: string;
        width: number;
        height: number;
    };
}
interface IFooter {
    id: number;
    attributes: {
        title: string;
        subtitle: string;
        office_contact?: IOfficeContact[];
        footer_bg: {
            id: number;
            attributes: IFooterBg;
        }
    };
}

let footerCover: IFooterBg;

const FooterContent = () => {
    const router = useRouter();
    const locale = router.locale;
    //console.log("locale ", locale);

    const sanitizer = dompurify.sanitize;

    const page_query = {
        default: qs.stringify(
            {
                populate: "*",
                locale: locale,
            },
            { encodeValuesOnly: true }
        ),
    };

    const fetchWithLocale = (url: string) => fetch(url).then((r) => r.json());
    const footerURL = `${process.env.NEXT_PUBLIC_API_URL}/footer?${page_query.default}`;
    const { data, error } = useSWR(footerURL, fetchWithLocale);

    //console.log(process);
    //console.log(process.env.NEXT_PUBLIC_API_URL);

    // без этого не будет работать парсинг
    if (error) return <div>Failed to fetch data.</div>;
    if (!data) return <h2>Loading...</h2>;
    
    footerCover = data.data.attributes.footer_bg.data;

    return (
        <>
            <h2>{data.data.attributes.title}</h2>
            <p className="middle-text bold">
                {data.data.attributes.subtitle}
            </p>

            <div className="row text-row">
                {data.data.attributes.office_contact?.map(
                    (office_contact: IOfficeContact) => {
                        return (
                            <div
                                className="col-sm-6"
                                key={office_contact.id}
                            >
                                <h4>{office_contact.title}</h4>
                                {parse(sanitizer(office_contact.address))}
                            </div>
                        );
                    }
                )}
            </div>
        </>
    )
};

const Footer = () => {
    

    return (
        <footer className="footer">
            <SectionContainer fullHeight bgColor="dark" bgCover={footerCover}>
                <FooterContent />
            </SectionContainer>
        </footer>
    );
};

export default Footer;
