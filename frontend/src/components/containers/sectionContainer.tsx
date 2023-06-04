import { FC, ReactNode } from "react";
import classNames from "classnames";
import Image from "next/image";
interface SectionProps {
    children: ReactNode;
    fullHeight?: boolean;
    bgColor?: "beige" | "dark";
    id?: string,
    bgCover?: {
        attributes: {
            url: string;
            width: number;
            height: number;
        }
    }
};

const SectionContainer: FC<SectionProps> = (props) => {
    //console.log(props.bgCover);
    //console.log("bgCover url ", props.bgCover?.attributes.url);
    const sectionClass = classNames("section", {
        "section--height-full": props.fullHeight,
        "section--bg-color-dark section--text-white": props.bgColor == "dark",
        "section--bg-color-beige": props.bgColor == "beige",
    });

    return (
        <section className={sectionClass} id={props.id}>
            {props.bgCover &&
            <Image
                src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${props.bgCover?.attributes.url}`}
                alt="Cortex"
                quality="100"
                fill={true}
                style={{objectFit:"cover"}}
            />
            }
            <div className="container-fluid main-container">
                <div className="section-content">
                    <div className="section-content-center">
                        {props.children}
                    </div>
                </div>
            </div>
        </section>
    );
};

export default SectionContainer;
