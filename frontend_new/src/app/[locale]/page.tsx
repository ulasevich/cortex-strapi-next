import Image from "next/image";
import { notFound } from "next/navigation";
import { Locale } from '@/i18n-config';
import parse from "html-react-parser";
import dompurify from "isomorphic-dompurify";
import { getDictionary } from '@/get-dictionary';
import { fetchMainPage, fetchCases } from "@/app/_lib/data";
import PageSection from "@/_components/layout/pageSection";
import CasesList from "@/_components/list/casesList";
import { MainPageProps, CasesProps } from "@/app/_lib/types";
import { getTranslations } from "next-intl/server";
import {unstable_setRequestLocale} from 'next-intl/server';
import { locales } from "@/src/config";



export default async function Home({
    params: { locale }
}: {
    params: { locale: Locale }
}) {
    //const dictionary = await getDictionary(lang);

    // Validate that the incoming `locale` parameter is valid
    const isValidLocale = locales.some((cur) => cur === locale);
    if (!isValidLocale) notFound();

    // Enable static rendering
    unstable_setRequestLocale(locale);

    //const t = getTranslations('heading');
    const t = await getTranslations({locale, namespace: 'heading'});

    //const dataMainPage:MainPageProps = await fetchMainPage(lang);
    //const dataCases:CasesProps = await fetchCases(lang);

    let dataMainPage: MainPageProps;
    let dataCases: CasesProps;

    try{
        [dataMainPage, dataCases] = await Promise.all([
            fetchMainPage(locale),
            fetchCases(locale),
        ]);
    } 
    catch(e){
        console.log('Home page error')
        notFound()
    }

    const sanitizer = dompurify.sanitize;

    return (
        <>
            <PageSection fullHeight>
                <p>Site name: {t('cortex')}</p>
                <p>Current locale: {locale} </p>
                <h1 className="text-orange-600 py-7">{parse(sanitizer(dataMainPage.title))}</h1>
                <div>{parse(sanitizer(dataMainPage.detail_text))}</div>
                <br/><br/>
                <div dangerouslySetInnerHTML={{__html: dataMainPage.detail_text}} />
                <div>
                    <Image
                        //className="relative dark:drop-shadow-[0_0_0.3rem_#ffffff70] dark:invert"
                        src="/next.svg"
                        alt="Next.js Logo"
                        width={180}
                        height={37}
                        priority
                    />
                </div>
            </PageSection>
            <PageSection>
                <h2>Companies Built</h2>
                <CasesList cases={dataCases} />
            </PageSection>
            <PageSection bgColor="yellow">
                <h2>Our Services</h2>
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                    Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                    Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                    Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                    Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </PageSection>
        </>
    );
}
