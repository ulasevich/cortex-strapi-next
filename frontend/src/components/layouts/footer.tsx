import * as qs from "qs";
import { useRouter } from "next/router";
import useSWR from "swr";
import dompurify from "isomorphic-dompurify";
import parse from "html-react-parser";
import SectionContainer from "../containers/sectionContainer";

export interface IOfficeContact {
    id: number;
    title: string;
    address: string;
}
export interface IFooter {
    id: number;
    attributes: {
        title: string;
        subtitle: string;
        office_contact?: IOfficeContact[];
    };
}

const Footer = () => {
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
    if (error) return <div>Failed to fetch users.</div>;
    if (!data) return <h2>Loading...</h2>;

    return (
        <footer className="footer">
            <SectionContainer>
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
            </SectionContainer>
        </footer>
    );
};

export default Footer;
