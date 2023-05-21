import { FC, PropsWithChildren } from "react";
import Head from 'next/head';
import Meta from '../seo/meta';
import { IMeta } from "../seo/meta.interface";
import Header from './header';
import Footer from './footer';


const MainLayout: FC<PropsWithChildren<IMeta>> = ({ children, title, description }) => {
  return (
    <>
      <Head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <link
          rel="preload"
          href="/font-face/subset-Calibri.woff2"
          as="font"
          type="font/woff2"
          crossOrigin="anonymous"
        />
        <link
          rel="preload"
          href="/font-face/subset-Calibri-Bold.woff2"
          as="font"
          type="font/woff2"
          crossOrigin="anonymous"
        />
      </Head>
      <Meta title={title} description={description} />
      {children}
      <Header />
      <Footer />
    </>
  )
}

export default MainLayout