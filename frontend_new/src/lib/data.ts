import qs from "qs";

import { fetcher } from "@/lib/utils";

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
        return MainPageResponse;
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
        return FooterContactsResponse;
    } catch (error) {
        console.error("Database Error:", error);
        throw new Error("Failed to fetch revenue data.");
    }
}

export async function fetchCases(locale: string) {
    try {
        const query = qs.stringify(
            {
                fields: ["name", "preview_text", "locale", "code", "sort"],
                populate: ["preview_image"],
                locale: locale,
            },
            { encodeValuesOnly: true }
        );
        const CasesResponse = await fetcher(STRAPI_URL + "/projects?" + query);
        return CasesResponse; // flattenAttributes
    } catch (error) {
        console.error("Database Error:", error);
        throw new Error("Failed to fetch revenue data.");
    }
}

export async function fetchCaseDetail(locale: string, code: string) {
    try {
        const query = qs.stringify(
            {
                fields: ["name", "detail_text", "locale", "code", "sort"],
                populate: "*",
                locale: locale,
            },
            { encodeValuesOnly: true }
        );
        const CaseResponse = await fetcher(STRAPI_URL + `/projects/${code}?${query}`);
        return CaseResponse; // flattenAttributes
    } catch (error) {
        console.error("Database Error:", error);
        throw new Error("Failed to fetch revenue data.");
    }
}

export async function fetchServices(locale: string) {
    try {
        const query = qs.stringify(
            {
                fields: ["name", "preview_text", "locale", "sort"],
                populate: ["preview_image"],
                locale: locale,
            },
            { encodeValuesOnly: true }
        );
        const ServicesResponse = await fetcher(STRAPI_URL + "/our-services?" + query);
        return ServicesResponse;
    } catch (error) {
        console.error("Database Error:", error);
        throw new Error("Failed to fetch revenue data.");
    }
}
