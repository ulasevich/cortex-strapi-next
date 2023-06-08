import { useTranslation } from "next-i18next";
import Link from "next/link";
import LanguageSwitcher from "../controls/languageSwitcher";

const Header = () => {
    const { t } = useTranslation("common");
    return (
        <header className="header">
            <div className="container-fluid main-container">
                <div className="row header-row align-items-center justify-content-end">
                    <div className="col header-row__logo">
                        <Link href="/">{t('cortex')}</Link>
                    </div>
                    <div className="col-auto">
                        <Link href="/productivity">Landing 1</Link>
                        &nbsp;
                        <Link href="/privacy-policy">Privacy Policy 2</Link>
                    </div>
                    <div className="col-auto header-row__lang">
                        <LanguageSwitcher />
                    </div>
                    <div className="col-auto header-row__menu">
                        <button type="button">menu</button>
                    </div>
                </div>
            </div>
        </header>
    );
};

export default Header;
