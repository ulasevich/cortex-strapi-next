import parse from 'html-react-parser';
import { sanitize } from 'isomorphic-dompurify';
import { fetchFooterContacts } from '@/lib/data';
import type { FooterContactsProps } from '@/lib/types';
import PageSection from '@/components/layout/pageSection';
import type { LocaleTypes } from '@/i18n/settings';

type FooterProps = {
    locale: LocaleTypes;
};

export async function Footer(props: FooterProps) {
    const dataFooter: FooterContactsProps = await fetchFooterContacts(props.locale);
    return (
        <PageSection className="cx-layout__footer" bgColor="dark" fullHeight bgCover={dataFooter.data.attributes.footer_bg.data}>
            {dataFooter.data.attributes.office_contact?.map((officeContact) => {
                return (
                    <div className="m-4" key={officeContact.id}>
                        <h4 className="text-2xl font-bold mb-2">{officeContact.title}</h4>
                        {parse(sanitize(officeContact.address))}
                    </div>
                );
            })}
        </PageSection>
    );
}
