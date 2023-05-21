import { AppProps } from 'next/app';
import "animate.css/animate.min.css";
import '@/styles/main.scss';

export default function MyApp({ Component, pageProps }: AppProps) {
  return (
    <Component {...pageProps} />
  )
}
