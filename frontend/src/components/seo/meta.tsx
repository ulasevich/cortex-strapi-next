import { FC, PropsWithChildren} from 'react';
import Head from 'next/head';
import { IMeta } from './meta.interface'
import { getTitle } from '@/utils/api';

const Meta: FC<PropsWithChildren<IMeta>> = ({title, description, children}) => {
  return (
    <>
      <Head>
        <title>{getTitle(title)}</title>
        {
          description ? 
          <>
            <meta name="description" content={description} />
            <meta property="og:type" content="website" />
            <meta property="og:site_name" content="cx.technology" />
            <meta property="og:title" content={getTitle(title)} />
            <meta property="og:description" content={description} />
            <meta property="og:url" content="http://cx.technology/" />
            <meta property="og:locale" content="en_EN" />
            <meta property="og:image" content="http://cx.technology/img/social_cover.jpg" />
            <meta name="twitter:title" content={getTitle(title)} />
            <meta name="twitter:description" content={description} />
            <meta name="twitter:image:src" content="http://cx.technology/img/social_cover.jpg" />
            <meta name="twitter:url" content="http://cx.technology/" />
            <meta name="twitter:domain" content="cx.technology"></meta>
          </>
          :
          <meta name="robots" rel="nofollow, noindex" />
        }
        <link rel="apple-touch-icon" sizes="180x180" href="/favicon/apple-touch-icon.png" />
        <link rel="icon" sizes="any" href="/favicon/favicon.ico" />
        <link rel="manifest" href="/favicon/manifest.json" />
        <link rel="mask-icon" href="/favicon/safari-pinned-tab.svg" color="#000000" />
        <link rel="shortcut icon" href="/favicon/favicon.ico" />
        <meta name="msapplication-config" content="/favicon/browserconfig.xml" />
        <meta name="apple-mobile-web-app-status-bar-style" content="#131313"></meta>
        <meta name="theme-color" content="#131313" />
        {children}
      </Head>
    </>
  )
}

export default Meta
