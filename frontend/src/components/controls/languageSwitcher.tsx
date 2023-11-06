import { useRouter } from 'next/router';
import { useTranslation } from "next-i18next";

export default function LanguageSwitcher() {
    const router = useRouter();
    //console.log(router);
    const { t } = useTranslation("common");

    const langChange = (e: React.ChangeEvent<{ value: string }>) => {
        router.push(
            {
                pathname: router.pathname,
                query: router.query,
            },
            router.asPath,
            {
                locale: e.target.value, scroll: false
            }
        );
    };

    return (
        <>
        {router.locale !== "fr" // если у пользователя Locale - ru, переключатель не выводим
            ? 
            <select onChange={langChange} value={router.locale}>
                {router.locales?.map((locale: string) => {
                    return (
                        <option 
                            value={locale}
                            key={locale}
                        >
                            {t(locale)}
                        </option>
                    )
                })}
            </select>
            : 
            <></>
        }
        </>
    )
}