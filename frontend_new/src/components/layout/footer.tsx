import parse from "html-react-parser";
import dompurify from "isomorphic-dompurify";
import { fetchFooterContacts } from "@/lib/data";
import { FooterContactsProps } from "@/lib/types";
import PageSection from "@/components/layout/pageSection";
import { LocaleTypes } from "@/i18n/settings";


type FooterProps = {
    locale: LocaleTypes
}

export async function Footer(props: FooterProps) {
    const data:FooterContactsProps = await fetchFooterContacts(props.locale);
    //console.log("Footer", data);
    const sanitizer = dompurify.sanitize;

    return (
        <PageSection className="cx-layout__footer" bgColor="dark" fullHeight>
            Footer Footer Footer Footer Footer Footer
            {data.office_contact?.map(
                (office_contact) => {
                    return (
                        <div
                            className="m-4"
                            key={office_contact.id}
                        >
                            <h4>{office_contact.title}</h4>
                            {parse(sanitizer(office_contact.address))}
                        </div>
                    );
                }
            )}
            <div className="bg-slate-700">
                Footer Footer Footer Footer Footer
            </div>
            <div className="bg-indigo-700 text-orange-400">
                Footer Footer Footer Footer Footer
            </div>
            <div className="text-cyan-400">
                Footer Footer Footer Footer Footer
            </div>
        </PageSection>
    )
}
