export type MainPageProps = {
    id: number,
    title: string,
    detail_text: string,
    locale: string,
    main_logo: {
        id: number,
        url: string,
        width: number,
        height: number
    };
    main_bg: {
        id: number,
        url: string,
        width: number,
        height: number
    };
};

export type FooterContactsProps = {
    id: number,
    title: string,
    locale: string,
    footer_bg: {
        id: number,
        url: string,
        width: number,
        height: number
    },
    office_contact?: {
        id: number,
        title: string,
        address: string
    }[];
};
