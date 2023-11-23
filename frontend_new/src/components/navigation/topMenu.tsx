"use client";

import Link from "next/link"
import { usePathname, useParams } from "next/navigation";

const TopMenu = () => {
    const currentRoute = usePathname();
    let locale = useParams()?.locale;
    //console.log(currentRoute, locale);

    return (
        <div>
            <Link href={`/${locale}`} className={currentRoute === `/${locale}` ? "active-class-name" : ""}>Home</Link> &nbsp;&nbsp;
            <Link href={`/${locale}/promo`} className={currentRoute === `/${locale}/promo` ? "active-class-name" : ""}>Promo</Link>
        </div>
    )
}

export default TopMenu