export interface IService {
    id: number;
    attributes: {
        name: string;
        preview_text: string;
        createdAt?: Date;
        updatedAt?: Date;
        publishedAt?: Date;
        locale?: string;
        code: string;
        sort?: number;
        preview_image?: {
            data?: {
                attributes: {
                    url: string;
                    width: number;
                    height: number;
                };
            };
        };
    };
}

export interface IServicesData {
    services: {
        data: IService[];
    };
}

export interface IServiceData {
    service: {
        data: IService;
    };
}
