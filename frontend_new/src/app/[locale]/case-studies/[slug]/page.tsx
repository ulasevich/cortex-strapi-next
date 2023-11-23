import PageSection from '@/components/layout/pageSection';

export default async function Page({
    params
}: {
    params: { locale: string, slug: string }
}) {
    return (
        <PageSection fullHeight>
            <div>My Post: {params.slug} {params.locale}</div>
        </PageSection>
    )
}