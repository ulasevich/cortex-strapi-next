export const defaultLocale = "en";

export const locales = [defaultLocale, "ru"] as const;

export const i18n = {
    defaultLocale,
    locales,
} as const;

export type i18nConfig = typeof i18n;

export type Locale = (typeof i18n)['locales'][number];