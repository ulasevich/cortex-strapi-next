import TopMenu from "@/components/navigation/topMenu";
import LocaleSwitcher from "@/components/localeSwitcher";


export const Header = () => {
    return (
        <header className="cx-layout__header bg-neutral-800 text-neutral-50 fixed w-full">
            <div className="container w-full mx-auto px-4 md:px-6 py-4 md:py-6 flex items-center">
                Header 11 
                <TopMenu />
                <LocaleSwitcher />
            </div>
        </header>
    )
}