'use client';

import Link from 'next/link';
import { usePathname, useParams } from 'next/navigation';

const TopMenu = () => {
    const currentRoute = usePathname();
    const { locale } = useParams();
    // console.log(typeof locale);
    // console.log('locale', locale);
    const lang = locale as string;
    const langIndex = locale === 'en' ? `/` : `/${lang}`;
    const langRest = locale === 'en' ? `` : `/${lang}`;

    const menuItems = [
        {
            path: `${langIndex}`,
            name: 'Home',
        },
        {
            path: `${langRest}/promo`,
            name: 'Promo',
        },
    ];

    return (
        <div className="underline-offset-4 flex gap-5 justify-center">
            {menuItems.map((menuItem) => (
                <Link
                    key={menuItem.path}
                    href={menuItem.path}
                    className={currentRoute === menuItem.path ? 'text-amber-400 underline' : 'hover:underline'}
                >
                    {menuItem.name}
                </Link>
            ))}
        </div>
    );
};

export default TopMenu;
