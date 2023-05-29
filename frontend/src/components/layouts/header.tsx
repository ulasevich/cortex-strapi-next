import { useRouter } from 'next/router';
import { useTranslation } from 'next-i18next';
import Link from "next/link"
import LanguageSwitcher from '../controls/languageSwitcher';

const Header = () => {
  const router = useRouter();
  const { t } = useTranslation('common');
  return (
    <header className="header">
      <div className="container-fluid main-container">
        <div className="row header-row align-items-center justify-content-end">
          <div className="col-auto">
            <Link href="/">LOGO</Link> &nbsp;&nbsp;
            <Link href="/privacy-policy">Privacy Policy</Link> &nbsp;&nbsp;
            <Link
              href='/'
              locale={router.locale === 'en' ? 'ru' : 'en'}
              scroll={false}
            >
              {t('change_locale')}
              
            </Link>
            <LanguageSwitcher />
          </div>
        </div>
      </div>
    </header>
  )
}

export default Header
