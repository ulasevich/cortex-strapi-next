export interface IProject {
    id: number,
    attributes: {
        name: string,
        preview_text: string,
        detail_text: string,
        createdAt?: Date,
        updatedAt?: Date,
        publishedAt?: Date,
        locale?: string,
        slug: string,
        code: string,
        sort?: number,
        preview_image?: {
            data?: {
                attributes: {
                    url: string
                    width: number
                    height: number
                }
            }
        }
    }
}

export interface IProjectsData {
    projects: {
        data: IProject[]
    }
}

export interface IProjectData {
    project: {
        data: IProject
    },
    error?: object
}
