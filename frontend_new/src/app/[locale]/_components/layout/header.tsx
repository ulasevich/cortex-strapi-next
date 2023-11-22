import TopMenu from "@/_components/navigation/topMenu";
import LocaleSwitcher from "@/_components/localeSwitcher";
import { Locale } from "@/i18n-config";


type HeaderProps = {
    locale: Locale
}

export const Header = (props: HeaderProps) => {
    return (
        <header className="cx-layout__header bg-neutral-800 text-neutral-50 fixed w-full">
            <div className="container w-full mx-auto px-4 md:px-6 py-4 md:py-6 flex items-center">
                Header 11 
                <TopMenu />
                <LocaleSwitcher locale={props.locale} />
            </div>
        </header>
    )
}