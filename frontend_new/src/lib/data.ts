import qs from 'qs';
import { fetcher } from '@/lib/utils';
import { STRAPI_URL } from '@/constants/api';
import type { CasePropsData, CasesPropsData, FooterContactsProps, MainPageProps, ServicesProps } from './types';

export async function fetchMainPage(locale: string) {
    try {
        const query = qs.stringify(
            {
                fields: ['title', 'detail_text', 'locale'],
                populate: '*',
                locale,
            },
            { encodeValuesOnly: true }
        );
        const MainPageResponse: MainPageProps = await fetcher(`${STRAPI_URL}/main-page?${query}`, { next: { revalidate: 60 } });
        return MainPageResponse;
    } catch (error) {
        console.error('Database Error:', error);
        throw new Error('Failed to fetch revenue data.');
    }
}

export async function fetchFooterContacts(locale: string) {
    try {
        const query = qs.stringify(
            {
                populate: '*',
                locale,
            },
            { encodeValuesOnly: true }
        );
        const FooterContactsResponse: FooterContactsProps = await fetcher(`${STRAPI_URL}/footer?${query}`, { next: { revalidate: 50 } });
        return FooterContactsResponse;
    } catch (error) {
        console.error('Database Error:', error);
        throw new Error('Failed to fetch revenue data.');
    }
}

export async function fetchCases(locale: string) {
    try {
        const query = qs.stringify(
            {
                fields: ['name', 'preview_text', 'locale', 'code', 'sort'],
                populate: ['preview_image'],
                locale,
            },
            { encodeValuesOnly: true }
        );
        const CasesResponse: CasesPropsData = await fetcher(`${STRAPI_URL}/projects?${query}`);
        return CasesResponse;
    } catch (error) {
        console.error('Database Error:', error);
        throw new Error('Failed to fetch revenue data.');
    }
}

export async function fetchCaseDetail(locale: string, code: string) {
    try {
        const query = qs.stringify(
            {
                fields: ['name', 'detail_text', 'locale', 'code', 'sort'],
                populate: '*',
                locale,
            },
            { encodeValuesOnly: true }
        );
        const CaseResponse: CasePropsData = await fetcher(`${STRAPI_URL}/projects/${code}?${query}`);
        return CaseResponse;
    } catch (error) {
        console.error('Database Error:', error);
        throw new Error('Failed to fetch revenue data.');
    }
}

export async function fetchServices(locale: string) {
    try {
        const query = qs.stringify(
            {
                fields: ['name', 'preview_text', 'locale', 'sort'],
                populate: ['preview_image'],
                locale,
            },
            { encodeValuesOnly: true }
        );
        const ServicesResponse: ServicesProps = await fetcher(`${STRAPI_URL}/our-services?${query}`);
        return ServicesResponse;
    } catch (error) {
        console.error('Database Error:', error);
        throw new Error('Failed to fetch revenue data.');
    }
}
