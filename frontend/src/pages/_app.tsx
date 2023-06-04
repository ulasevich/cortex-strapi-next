import { AppProps } from "next/app";
import { appWithTranslation } from "next-i18next";
import MainLayout from "@/components/layouts/mainLayout";
import "animate.css/animate.min.css";
import "@/styles/main.scss";

function MyApp({ Component, pageProps }: AppProps) {
    const AnyComponent = Component as any;
    return (
        <MainLayout>
            <AnyComponent {...pageProps} />
        </MainLayout>
    );
}

export default appWithTranslation(MyApp);
