import parse from "html-react-parser";
import dompurify from "isomorphic-dompurify";
import { fetchFooterContacts } from "@/app//_lib/data";
import { FooterContactsProps } from "@/app/_lib/types";


type FooterProps = {
    lang: string
}

export async function Footer(props: FooterProps) {
    const data:FooterContactsProps = await fetchFooterContacts(props.lang);
    console.log("Footer", data);
    const sanitizer = dompurify.sanitize;

    return (
        <footer className="footer bg-neutral-800 text-neutral-50 p-6">
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
        </footer>
    )
}
