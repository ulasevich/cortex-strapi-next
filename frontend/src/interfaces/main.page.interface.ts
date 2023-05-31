export interface IMainPageData {
    main_page: {
        data: {
            id: number;
            attributes: {
                title: string;
                detail_text: string;
                createdAt?: Date;
                updatedAt?: Date;
                publishedAt?: Date;
                locale?: string;
                main_logo: {
                    data?: {
                        id: number;
                        attributes: {
                            url: string;
                            width: number;
                            height: number;
                        };
                    };
                };
                main_bg: {
                    data?: {
                        id: number;
                        attributes: {
                            url: string;
                            width: number;
                            height: number;
                        };
                    };
                };
            };
        };
    },
    error?: object;
}
