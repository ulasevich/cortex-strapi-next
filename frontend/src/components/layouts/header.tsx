import { useTranslation } from "next-i18next";
import Link from "next/link";
import LanguageSwitcher from "../controls/languageSwitcher";

const Header = () => {
    const { t } = useTranslation("common");
    return (
        <header className="header">
            <div className="container-fluid main-container">
                <div className="row header-row align-items-center justify-content-end">
                    <div className="col-auto header-row__logo">
                        <Link href="/">{t('cortex')}</Link>
                    </div>
                    <div className="col" style={{textAlign: "right"}}>
                        <Link href="/productivity">{t('landing')}</Link>
                        &nbsp;
                        <Link href="/privacy-policy">{t('privacy_policy')}</Link>
                    </div>
                    <div className="col-auto header-row__lang">
                        <LanguageSwitcher />
                    </div>
                    <div className="col-auto header-row__menu">
                        {/* <button type="button">menu</button> */}
                    </div>
                </div>
            </div>
        </header>
    );
};

export default Header;
