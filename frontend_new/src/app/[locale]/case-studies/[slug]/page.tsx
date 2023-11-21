import { Locale } from '@/i18n-config';

export default async function Page({
    params
}: {
    params: { lang: Locale, slug: string }
}) {
    return <div>My Post: {params.slug} {params.lang}</div>
}