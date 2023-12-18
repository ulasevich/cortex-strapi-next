'use client';

import { useEffect } from 'react';
import PageSection from '@/components/layout/pageSection';

export default function GlobalError({ error, reset }: { error: Error & { digest?: string }; reset: () => void }) {
    // console.log('Global Error', error);
    useEffect(() => {
        // Log the error to an error reporting service
        // console.error('error', error);
    }, [error]);

    return (
        <html lang="en">
            <body>
                <PageSection fullHeight className="text-center">
                    <h2 className="text-2xl">Something went wrong!</h2>
                    <button onClick={() => reset()}>Try again</button>
                </PageSection>
            </body>
        </html>
    );
}
