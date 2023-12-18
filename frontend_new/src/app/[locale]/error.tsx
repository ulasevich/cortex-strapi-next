'use client';

import { useEffect } from 'react';
import PageSection from '@/components/layout/pageSection';

export default function Error({ error, reset }: { error: Error & { digest?: string }; reset: () => void }) {
    // console.log('Error');
    useEffect(() => {
        // Log the error to an error reporting service
        console.error(error);
    }, [error]);

    return (
        <PageSection fullHeight className="text-center" bgColor="yellow">
            <h2 className="text-2xl">Something went wrong!</h2>
            <button
                onClick={
                    // Attempt to recover by trying to re-render the segment
                    () => reset()
                }
            >
                Try again
            </button>
        </PageSection>
    );
}
