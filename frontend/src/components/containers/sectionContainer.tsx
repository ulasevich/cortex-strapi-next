import { FC, ReactNode } from "react";
import classNames from "classnames";

type SectionProps = {
  children: ReactNode,
  fullHeight?: boolean,
}

const SectionContainer: FC<SectionProps> = (props) => {
  const sectionClass = classNames('section', {
    'section--full-height': props.fullHeight,
  });

  return (
    <section className={sectionClass}>
      <div className="container-fluid main-container">
        <div className="section-content">
          <div className="section-content-center">
            {props.children}
          </div>
        </div>
      </div>
    </section>
  )
}

export default SectionContainer
