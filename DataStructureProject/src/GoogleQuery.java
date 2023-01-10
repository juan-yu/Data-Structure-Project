import java.io.BufferedReader;

import java.io.IOException;

import java.io.InputStream;

import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
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

		this.searchKeyword = searchKeyword +" �¾��v"+" �F�v";
		this.url = "http://www.google.com/search?q="+URLEncoder.encode(this.searchKeyword, StandardCharsets.UTF_8)+"&oe=utf8&num=30";
	
		//System.out.println(url);
	}

	

	private String fetchContent() throws IOException

	{
		String retVal = "";
	
		URL u = new URL(url);

		URLConnection conn = u.openConnection();

		conn.setRequestProperty("User-agent", "Chrome/7.0.517.44");

	
		try {InputStream in = conn.getInputStream();
			
			InputStreamReader inReader = new InputStreamReader(in,"utf-8");
			
			 BufferedReader bufReader = new BufferedReader(inReader);
			String line = null;
		
			while((line=bufReader.readLine())!=null)
			{
				retVal += line;

			}
			in.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return retVal;
	}
public HashMap<String,String> relatedSearch() throws IOException{
		
		if(content==null)

		{
		 content= fetchContent();
		}
		HashMap<String, String> relatedKeyword = new HashMap<String, String>();
		Document doc = Jsoup.parse(content);
		//System.out.println(doc.text());
		Elements lis = doc.select("div");
		// System.out.println(lis);
		lis = lis.select(".iIWm4b");
		for(Element li : lis)
		{
			try 

			{
				String citeUrl = li.select("a").get(0).attr("href");
				citeUrl= java.net.URLDecoder.decode(citeUrl, StandardCharsets.UTF_8);
				String keyword = citeUrl.substring(citeUrl.indexOf("q=")+2,citeUrl.indexOf("&sa")).replace(" ","")+"r";
				String relatedUrl ="http://www.google.com/search?q="+URLEncoder.encode(keyword, StandardCharsets.UTF_8)+"&oe=utf8&num=30";
				relatedKeyword.put(keyword, relatedUrl);
			} catch (IndexOutOfBoundsException exc) {

//				e.printStackTrace();

			}
			
}
		return relatedKeyword;
}
	
	public HashMap<String, String> query() throws IOException

	{
		Keyword a =new Keyword("���H",10);
		Keyword b =new Keyword("�¹D",10);
		Keyword c =new Keyword("�A��",10);
	    Keyword d =new Keyword(this.searchKeyword,5);
		Keyword e =new Keyword("�y��",5);
	    Keyword f =new Keyword("�¾��v",5);
	    Keyword h =new Keyword("�X�y",5);
	    Keyword k =new Keyword("����",5);
	    Keyword l =new Keyword("�~�J",5);
	    Keyword m =new Keyword("���",5);
	    Keyword n =new Keyword("����",5);
	    Keyword p =new Keyword("�ª�",5);
	    Keyword q =new Keyword("�r",5);
	    Keyword r =new Keyword("����",5);
	    Keyword s =new Keyword("�p�T",5);
	    Keyword t =new Keyword("���@",5);
	    Keyword u =new Keyword("�ޥ�",5);
	    Keyword v =new Keyword("��ŧ",5);
	    Keyword w =new Keyword("�ٶ�",5);
	    Keyword x =new Keyword("�٬�",3);
	    Keyword y =new Keyword("����",3);
	    Keyword z =new Keyword("���j��",3);
	    Keyword aa =new Keyword("�j��",3);
	    Keyword ab =new Keyword("����",3);
	    Keyword ac =new Keyword("�_��",2);
	    Keyword ad =new Keyword("�s��",2);
	    Keyword ae =new Keyword("����",2);
	    Keyword af =new Keyword("����",2);
	    Keyword ag =new Keyword("�n��",-5);
	    Keyword ah =new Keyword("�F�Z",-5);
	    Keyword ai =new Keyword("�߷R",-5);
	    Keyword aj =new Keyword("�}��",-5);

	    ArrayList<WebTree> Web = new ArrayList<WebTree>();
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
        keywords.add(p);
        keywords.add(q);
        keywords.add(r);
        keywords.add(s);
        keywords.add(t);
        keywords.add(u);
        keywords.add(v);
        keywords.add(w);
        keywords.add(x);
        keywords.add(y);
        keywords.add(z);
        keywords.add(aa);
        keywords.add(ab);
        keywords.add(ac);
        keywords.add(ad);
        keywords.add(ae);
        keywords.add(af);
        keywords.add(ag);
        keywords.add(ah);
        keywords.add(ai);
        keywords.add(aj);
		if(content==null)

		{

			content= fetchContent();

		}

		HashMap<String, String> retVal = new HashMap<String, String>();
		
		Document doc = Jsoup.parse(content);
		//System.out.println(doc.text());
		Elements lis = doc.select("div");
		// System.out.println(lis);
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
				String title = li.select("a").get(0).select(".vvjwJb").text();
				if(title.equals("")) {
					continue;
				}
				SubPage subpage = new SubPage(citeUrl);
		
				WebPage rootPage = new WebPage(citeUrl,title);
				WebTree tree = new WebTree(rootPage);
				if (subpage.query()!=null) {
					int num = subpage.query().size() - 1;
					for (int j = 0; j < num; j++) {
						tree.root.addChild(subpage.query().get(j));
					}
					System.out.println(title + "," + citeUrl);
					
				}
				Web.add(tree);
				Web.get(i).setPostOrderScore(keywords);
				i++;
			} catch (IndexOutOfBoundsException exc) {

//				e.printStackTrace();

			}

			
			
		}
		Sort urlSort = new Sort(Web);
		urlSort.sort();
		for(WebTree node: Web) {
			retVal.put(node.root.getName(), node.root.getUrl());
			System.out.println(node.root.getNodeScore());
		}
		return retVal;
	

	}

	
}