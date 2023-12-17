'use client';

import Link from 'next/link';
import { usePathname, useParams } from 'next/navigation';

const TopMenu = () => {
    const currentRoute = usePathname();
    const { locale } = useParams();

    return (
        <div className="underline-offset-4">
            <Link href={`/${locale}`} className={currentRoute === `/${locale}` ? 'text-amber-400 underline' : 'hover:underline'}>
                Home
            </Link>{' '}
            &nbsp;&nbsp;
            <Link href={`/${locale}/promo`} className={currentRoute === `/${locale}/promo` ? 'text-amber-400 underline' : 'hover:underline'}>
                Promo
            </Link>
        </div>
    );
};

export default TopMenu;
