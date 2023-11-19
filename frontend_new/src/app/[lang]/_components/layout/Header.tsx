import PageSection from "@/_components/layout/pageSection";
import TopMenu from "@/_components/navigation/topMenu";
import LocaleSwitcher from "@/_components/localeSwitcher";


export const Header = () => {
    return (
        <header className="cx-layout__header bg-neutral-800 text-neutral-50 fixed w-full">
            <div className="container w-full mx-auto px-4 py-6 md:py-8 flex items-center">
                Header
                <TopMenu />
                <LocaleSwitcher />
            </div>
        </header>
    )
}