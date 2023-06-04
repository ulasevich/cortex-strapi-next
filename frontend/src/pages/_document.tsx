import { Html, Head, Main, NextScript, DocumentContext } from "next/document";

type DocumentProps = {
    locale: string
}

export default function Document({ locale }: DocumentProps) {
    return (
        <Html lang={locale}>
            <Head />
            <body>
                <Main />
                <NextScript />
            </body>
        </Html>
    );
}

export const getInitialProps = async (ctx: DocumentContext) => {
    return {
        locale: ctx.locale
    };
}
