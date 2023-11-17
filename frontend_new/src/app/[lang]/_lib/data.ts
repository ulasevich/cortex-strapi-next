import qs from "qs";

import { fetcher, flattenAttributes } from "@/app/_lib/utils";

const STRAPI_URL = process.env.NEXT_PUBLIC_API_URL;

export async function fetchMainPage(locale: string) {
    try {
        const query = qs.stringify(
            {
                fields: ["title", "detail_text", "locale"],
                populate: "*",
                locale: locale,
            },
            { encodeValuesOnly: true }
        );
        const MainPageResponse = await fetcher(STRAPI_URL + "/main-page?" + query);
        return flattenAttributes(MainPageResponse);
    } catch (error) {
        console.error("Database Error:", error);
        throw new Error("Failed to fetch revenue data.");
    }
}

export async function fetchFooterContacts(locale: string) {
    try {
        const query = qs.stringify(
            {
                populate: "*",
                locale: locale,
            },
            { encodeValuesOnly: true }
        );
        const FooterContactsResponse = await fetcher(STRAPI_URL + "/footer?" + query);
        return flattenAttributes(FooterContactsResponse);
    } catch (error) {
        console.error("Database Error:", error);
        throw new Error("Failed to fetch revenue data.");
    }
}
