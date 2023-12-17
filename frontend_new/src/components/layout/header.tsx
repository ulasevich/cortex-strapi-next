'use client';

import Link from 'next/link';
import type { LocaleTypes } from '@/i18n/settings';
import { useTranslation } from '@/i18n/client';
import TopMenu from '@/components/navigation/topMenu';
import LocaleSwitcher from '@/components/localeSwitcher';

type HeaderProps = {
    locale: LocaleTypes;
};

export const Header = (props: HeaderProps) => {
    const { t } = useTranslation(props.locale, 'common');

    return (
        <header className="cx-layout__header w-full fixed z-[100] text-neutral-50 bg-neutral-800/95 sm:[@supports(backdrop-filter:blur(0))]:bg-neutral-800/80 sm:[@supports(backdrop-filter:blur(0))]:backdrop-blur">
            <div className="container max-w-6xl mx-auto px-4 md:px-6 py-4 md:py-6 flex items-center justify-between gap-4">
                <Link href="/" className="text-amber-400">
                    {t('heading.cortex')}
                </Link>
                <TopMenu />
                <LocaleSwitcher />
            </div>
        </header>
    );
};
