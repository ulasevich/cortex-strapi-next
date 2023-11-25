import { FC, ReactNode } from "react";
import classNames from "classnames";
import Image from "next/image";
import { ImageProps } from "@/lib/types";

type SectionProps = {
    children: ReactNode,
    className?: string,
    fullHeight?: boolean,
    textWhite?: boolean,
    bgColor?: "yellow" | "dark",
    id?: string,
    wNarrow?: boolean,
    bgCover?: ImageProps
}

const PageSection: FC<SectionProps> = (props) => {
    const sectionClass = classNames("cx-page-section relative w-full flex items-center py-24", props.className, {
        "min-h-[100dvh]": props.fullHeight,
        "bg-gradient-to-b from-neutral-100 via-[#FFFFFF] to-neutral-100": !props.bgColor,
        "bg-gradient-to-b from-neutral-100 via-amber-50 to-neutral-100": props.bgColor == "yellow",
        "bg-neutral-800 text-neutral-50": props.bgColor == "dark",
        "text-neutral-50": props.textWhite,
        
    });

    const containerClass = classNames("container relative w-full mx-auto px-4 md:px-6", {
        "max-w-6xl": props.wNarrow
    });

    return (
        <div className={sectionClass}>
            {props.bgCover &&
                <Image
                    src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${props.bgCover?.attributes.url}`}
                    alt="Cortex"
                    quality="100"
                    fill={true}
                    style={{objectFit:"cover"}}
                />
            }
            <div className={containerClass}>
                {props.children}
                
            </div>
        </div>
    )
}

export default PageSection