export const fallbackLng = 'en';

export const i18n = {
    defaultLocale: 'en',
    locales: ['en', 'ru'],
    fallbackLng
} as const;

export type i18nConfig = typeof i18n;

export type Locale = (typeof i18n)['locales'][number];