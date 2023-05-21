import Link from "next/link"

const Header = () => {
  return (
    <header className="header">
      <div className="container-fluid main-container">
        <div className="row header-row align-items-center justify-content-end">
          <div className="col-auto">
            <Link href="/">LOGO</Link> &nbsp;
            <Link href="/privacy-policy">Privacy Policy</Link> 
          </div>
        </div>
      </div>
    </header>
  )
}

export default Header
