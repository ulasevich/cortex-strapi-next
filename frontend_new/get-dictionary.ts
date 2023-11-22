import 'server-only'
import { Locale, i18n } from './i18n-config'

// We enumerate all dictionaries here for better linting and typescript support
// We also get the default import for cleaner types
const dictionaries = {
    en: () => import("./dictionaries/en.json").then((module) => module.default),
    ru: () => import("./dictionaries/ru.json").then((module) => module.default),
};

export const getDictionary = async (locale: Locale) => dictionaries[i18n.locales.includes(locale) ? locale : i18n.defaultLocale]();
