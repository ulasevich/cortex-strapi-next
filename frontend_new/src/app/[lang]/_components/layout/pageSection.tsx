import { FC, ReactNode } from "react";
import classNames from "classnames";

type SectionProps = {
    children: ReactNode;
    className?: string,
    fullHeight?: boolean;
    bgColor?: "yellow" | "dark";
    id?: string,
    bgCover?: {
        url: string;
        width: number;
        height: number;
    }
}

const PageSection: FC<SectionProps> = (props) => {
    const sectionClass = classNames("cx-page-section w-full flex items-center py-24", props.className, {
        "min-h-[100dvh]": props.fullHeight,
        "bg-gradient-to-b from-neutral-100 via-[#FFFFFF] to-neutral-100": !props.bgColor,
        "bg-gradient-to-b from-neutral-100 via-amber-50 to-neutral-100": props.bgColor == "yellow",
        "bg-neutral-800 text-neutral-50": props.bgColor == "dark"
    });

    return (
        <div className={sectionClass}>
            <div className="container w-full mx-auto px-4 md:px-6">
                {props.children}
            </div>
        </div>
    )
}

export default PageSection