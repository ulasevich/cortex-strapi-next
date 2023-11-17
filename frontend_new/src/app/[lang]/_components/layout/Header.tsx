import TopMenu from "@/_components/navigation/topMenu";
import LocaleSwitcher from "@/_components/localeSwitcher";

export const Header = () => {
    return (
        <header className="qqq">
            Header
            <TopMenu />
            <div className=" zoomOut">
                Switcher: <LocaleSwitcher />
            </div>
        </header>
    )
}