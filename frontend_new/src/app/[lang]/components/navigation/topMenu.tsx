"use client";

import Link from "next/link"
import { usePathname, useParams } from "next/navigation";

const TopMenu = () => {
    const currentRoute = usePathname();
    const locale = useParams()?.lang;
    const params = useParams();
    console.log(params);

    return (
        <div>
            <Link href={`/${locale}`} className={currentRoute === `/${locale}` ? "active-class-name" : ""}>Home</Link> &nbsp;&nbsp;
            <Link href={`/${locale}/promo`} className={currentRoute === `/${locale}/promo` ? "active-class-name" : ""}>Promo</Link>
        </div>
    )
}

export default TopMenu