export type MainPageProps = {
    id: number;
    title: string;
    detail_text: string;
    locale: string;
    main_logo: {
        id: number;
        url: string;
        width: number;
        height: number;
    };
    main_bg: {
        id: number;
        url: string;
        width: number;
        height: number;
    };
};
