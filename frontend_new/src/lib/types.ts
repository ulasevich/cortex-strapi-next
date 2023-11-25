export type ImageProps = {
    id: number,
    attributes: {
        url: string,
        width: number,
        height: number
    }
};

export type MainPageProps = {
    data: {
        id: number,
        attributes: {
            title: string,
            detail_text: string,
            locale: string,
            main_logo: {
                data: ImageProps
            },
            main_bg: {
                data: ImageProps
            }
        }
    }
};

export type CaseProps = {
    id: number;
    attributes: {
        name: string,
        preview_text: string,
        detail_text: string,
        locale: string,
        code: string,
        sort: number,
        preview_image?: {
            data: ImageProps
        }
    }
};

export type ServicesProps = {
    data: ServiceProps[];
};

export type ServiceProps = {
    id: number;
    attributes: {
        name: string,
        preview_text: string,
        locale: string,
        sort: number,
        preview_image?: {
            data: ImageProps
        }
    }
};

export type CasesProps = {
    data: CaseProps[];
};

export type FooterContactsProps = {
    data: {
        id: number,
        attributes: {
            title: string,
            locale: string,
            footer_bg: {
                data: ImageProps
            },
            office_contact?: {
                id: number,
                title: string,
                address: string
            }[]
        }
    }
};
