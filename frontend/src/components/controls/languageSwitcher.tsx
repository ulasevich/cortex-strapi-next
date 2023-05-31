import { useRouter } from 'next/router';

export default function LanguageSwitcher() {
    const router = useRouter();
    //console.log('router ', router);
    return (
        <div>
            <select onChange={(e) =>
                router.push(
                    {
                        pathname: router.pathname,
                        query: router.query,
                    },
                    router.asPath,
                    { locale: e.target.value, scroll: false }
                    )
                }
                >
                <option value='en'>English</option>
                <option value='ru'>Русский</option>
            </select>
        </div>
    );
}