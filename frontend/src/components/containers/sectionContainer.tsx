import { FC, PropsWithChildren } from "react";

const SectionContainer: FC<PropsWithChildren> = ({ children }) => {
  return (
    <section className="section">
      <div className="container-fluid main-container">
        <div className="section-content">
          <div className="section-content-center">
            {children}
          </div>
        </div>
      </div>
    </section>
  )
}

export default SectionContainer
