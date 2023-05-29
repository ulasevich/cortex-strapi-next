import * as qs from 'qs';
import { useRouter } from 'next/router';
import useSWR from "swr";
import { fetcher } from "@/lib/api";
import SectionContainer from '../containers/sectionContainer'

export interface IFooter {
  id: number,
  attributes: {
      title: string,
      subtitle: string,
  }
}

const fetchWithLocale = (url: string) => fetch(url).then((r) => r.json());


const Footer = () => {
  const router = useRouter();
  const locale = router.locale;
  console.log("locale ", locale);

  const page_query = {
    default: qs.stringify(
        {
            populate: '*',
            locale: locale
        },
        { encodeValuesOnly: true }
    )
  }
  const footerResponse = `${process.env.NEXT_PUBLIC_API_URL}/footer?${page_query.default}`;

  const { data, error } = useSWR(footerResponse, fetchWithLocale);

  //console.log(process);
  //console.log(process.env.NEXT_PUBLIC_API_URL);

  // без этого не будет работать парсинг
  if (error) return <div>Failed to fetch users.</div>
  if (!data) return <h2>Loading...</h2>  

  return (
    <footer className="footer">
      <SectionContainer>
        <h2 className="fadeInDown">{data.data.attributes.title}</h2>
        <p className="middle-text bold fadeInRight">{data.data.attributes.subtitle}</p>
        
        <div className="row text-row fadeInUp">
            <div className="col-sm-6">
                <h4>Офис</h4>
                350063, Краснодарский край, город Краснодар, ул. Им. Пушкина, д. 38, офис 107 <br/>
                Email: <a href="mailto:info@cx.technology">info@cx.technology</a> <br/>
            </div>
        </div>
      </SectionContainer>
    </footer>
  )
}

export default Footer


