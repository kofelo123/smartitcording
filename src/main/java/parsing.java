	import org.jsoup.Jsoup;
	import org.jsoup.nodes.Document;
	import org.jsoup.nodes.Element;
	import org.jsoup.select.Elements;
	
public class parsing {



		public static void main(String[] args)throws Exception{
			
				Document doc = Jsoup.connect("http://note.naver.com/#%7B%22sHistoryFunction%22%3A%22readNote%22%2C%22oParameter%22%3A%7B%22noteId%22%3A%22201610191513515604%22%2C%22targetUserId%22%3A%22castello%22%2C%22noteType%22%3A%220%22%2C%22svcType%22%3A-1%2C%22fromType%22%3A-1%2C%22onlyNew%22%3A0%2C%22searchType%22%3A%22%22%2C%22keyword%22%3A%22%22%2C%22viewFrom%22%3A%220%22%2C%22direction%22%3A0%7D%2C%22sFolder%22%3A%22inbox%22%2C%22nPage%22%3A1%2C%22sUrl%22%3A%22%2Fjson%2Fread%2F%22%7D").get();
				Elements titles = doc.select("div.msg_header");
				
				for(Element e: titles){
					System.out.println("text: " + e.text());
					System.out.println("html: " + e.html());
				}
				/**/
				Elements links = doc.select("a[href]");
				for(Element l: links){
					System.out.println("link: " + l.attr("abs:href"));
				}
		}
	}

