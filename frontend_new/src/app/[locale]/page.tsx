import Image from "next/image";
import parse from "html-react-parser";
import dompurify from "isomorphic-dompurify";
import { LocaleTypes } from "@/i18n/settings";
import { createTranslation } from '@/i18n/server';
import { fetchMainPage, fetchCases } from "@/lib/data";
import { MainPageProps, CasesProps } from "@/lib/types";
import PageSection from "@/components/layout/pageSection";
import CasesList from "@/components/list/casesList";

export default async function Home({
    params: { locale },
}: {
    params: { locale: LocaleTypes }
}) {
    const {t} = await createTranslation(locale, "common");
    const dataMainPage:MainPageProps = await fetchMainPage(locale);
    const dataCases:CasesProps = await fetchCases(locale);

    const sanitizer = dompurify.sanitize;

    return (
        <>
            <PageSection fullHeight>
                <p>Site name: {t("heading.cortex")}</p>
                <p>Current locale: {locale}</p>
                <h1 className="text-orange-600 py-7">{parse(sanitizer(dataMainPage.title))}</h1>
                <div>{parse(sanitizer(dataMainPage.detail_text))}</div>
                <br/><br/>
                <div dangerouslySetInnerHTML={{__html: dataMainPage.detail_text}} />
                <div className="relative flex place-items-center before:absolute before:h-[300px] before:w-[480px] before:-translate-x-1/2 before:rounded-full before:bg-gradient-radial before:from-white before:to-transparent before:blur-2xl before:content-[''] after:absolute after:-z-20 after:h-[180px] after:w-[240px] after:translate-x-1/3 after:bg-gradient-conic after:from-sky-200 after:via-blue-200 after:blur-2xl after:content-[''] before:dark:bg-gradient-to-br before:dark:from-transparent before:dark:to-blue-700 before:dark:opacity-10 after:dark:from-sky-900 after:dark:via-[#0141ff] after:dark:opacity-40 before:lg:h-[360px] z-[-1]">
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