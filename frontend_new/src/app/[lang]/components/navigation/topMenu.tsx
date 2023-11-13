"use client";

import Link from "next/link"
import { usePathname } from "next/navigation";

const TopMenu = () => {
    const currentRoute = usePathname();
    return (
        <div>
            <Link href="/" className={currentRoute === "/" ? "active-class-name" : ""}>Home</Link> &nbsp;&nbsp;
            <Link href="/promo" className={currentRoute === "/promo" ? "active-class-name" : ""}>Promo</Link>
        </div>
    )
}

export default TopMenu