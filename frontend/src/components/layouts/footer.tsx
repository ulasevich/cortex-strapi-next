import SectionContainer from '../containers/sectionContainer'

const Footer = () => {
  return (
    <footer className="footer">
      <SectionContainer>
        <h2 className="fadeInDown">Наши Контакты</h2>
        <p className="middle-text bold fadeInRight" >Секрет успеха в том, чтобы начать!</p>
        <div className="row text-row fadeInUp">
            <div className="col-sm-6">
                <h4>Офис</h4>
                350063, Краснодарский край, город Краснодар, ул. Им. Пушкина, д. 38, офис 107 <br/>
                Email: <a href="mailto:info@cx.technology">info@cx.technology</a> <br/>
            </div>
        </div>
      </SectionContainer>
    </footer>
  )
}

export default Footer
