import { FC } from "react";

interface Props {
    children?: React.ReactNode
}

const BlockPreloader: FC<Props> = ({children}): JSX.Element => {
    return (
        <div className="block-preloader">
            <div className="block-preloader__content">
                <span className="block-preloader__content__text">
                    {children}
                </span>
            </div>
        </div>
    )
}
export default BlockPreloader