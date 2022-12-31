import java.io.BufferedReader;

import java.io.IOException;

import java.io.InputStream;

import java.io.InputStreamReader;

import java.net.URL;

import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.PriorityQueue;

import org.jsoup.Jsoup;

import org.jsoup.nodes.Document;

import org.jsoup.nodes.Element;

import org.jsoup.select.Elements;



public class GoogleQuery 

{

	public String searchKeyword;

	public String url;

	public String content;
	
//	public PriorityQueue<WebNode> heap;

	public GoogleQuery(String searchKeyword)

	{

		this.searchKeyword = searchKeyword +" 黑歷史";
		this.url = "http://www.google.com/search?q="+URLEncoder.encode(this.searchKeyword, StandardCharsets.UTF_8)+"&oe=utf8&num=30";
		System.out.println(url);
	}

	

	private String fetchContent() throws IOException

	{
		String retVal = "";

		URL u = new URL(url);

		URLConnection conn = u.openConnection();

		conn.setRequestProperty("User-agent", "Chrome/7.0.517.44");

		InputStream in = conn.getInputStream();

		InputStreamReader inReader = new InputStreamReader(in,"utf-8");

		BufferedReader bufReader = new BufferedReader(inReader);
		String line = null;

		while((line=bufReader.readLine())!=null)
		{
			retVal += line;

		}
		return retVal;
	}
	public HashMap<String, String> query() throws IOException

	{
		Keyword a =new Keyword("造假",4);
	    Keyword b =new Keyword("黑歷史",2);
	    Keyword c =new Keyword("抄襲",3);
	    Keyword d =new Keyword("出軌",3);
	    Keyword e =new Keyword("鬥毆",2);
	    Keyword f =new Keyword("情色",2);
	    Keyword h =new Keyword("說大話",2);
	    Keyword k =new Keyword("外遇",2);
	    Keyword l =new Keyword("酒店",2);
	    Keyword m =new Keyword("鬥爭",2);
	    Keyword n =new Keyword(this.searchKeyword,5);
	    Keyword o =new Keyword("造假",3);
	    Keyword p =new Keyword("黑道",2);
	    Keyword q =new Keyword("賄選",2);
	    Keyword r =new Keyword("弊案",2);
	    Keyword s =new Keyword("黑金",3);
	    Keyword t =new Keyword("毒",2);
	    Keyword u =new Keyword("殺人",2);

	    ArrayList<WebNode> Web = new ArrayList<WebNode>();
        ArrayList<Keyword> keywords = new ArrayList<Keyword>();
        keywords.add(a);
        keywords.add(b);
        keywords.add(c);
        keywords.add(d);
        keywords.add(e);
        keywords.add(f);
        keywords.add(h);
        keywords.add(k);
        keywords.add(l);
        keywords.add(m);
        keywords.add(n);
        keywords.add(o);
        keywords.add(p);
        keywords.add(q);
        keywords.add(r);
        keywords.add(s);
        keywords.add(t);
        keywords.add(u);

		if(content==null)

		{

			content= fetchContent();

		}

		HashMap<String, String> retVal = new HashMap<String, String>();
		
		Document doc = Jsoup.parse(content);
		//System.out.println(doc.text());
		Elements lis = doc.select("div");
//		 System.out.println(lis);
		lis = lis.select(".kCrYT");
		// System.out.println(lis.size());
		int i =0;
		
		for(Element li : lis)
		{
			try 

			{
				String citeUrl = li.select("a").get(0).attr("href");
				if(citeUrl.contains("&sa=U&ved=")){
					citeUrl = citeUrl.substring(0, citeUrl.indexOf("&sa=U&ved="));
				}
				citeUrl= java.net.URLDecoder.decode(citeUrl, StandardCharsets.UTF_8);
				String title = li.select("a").get(0).select(".vvjwJb").text();
				if(title.equals("")) {
					continue;
				}
				
				System.out.println(title + ","+citeUrl);
				Web.add(new WebNode(new WebPage(citeUrl,title)));
				Web.get(i).setNodeScore(keywords);
				i++;
			} catch (IndexOutOfBoundsException exc) {

//				e.printStackTrace();

			}

			
			
		}
		Sort urlSort = new Sort(Web);
		urlSort.sort();
		for(WebNode node: Web) {
			retVal.put(node.getName(), node.getUrl());
			System.out.println(node.nodeScore);
		}
		
		return retVal;
	

	}

	
}
