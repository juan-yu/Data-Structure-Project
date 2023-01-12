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



public class SubPage

{
	

	public String searchKeyword;

	public String url;

	public String content;
	public ArrayList<WebNode> subpages = new ArrayList<WebNode>();
	
//	public PriorityQueue<WebNode> heap;

	public SubPage(String url)

	{

		if(url.substring(0, 7).equals("/url?q=")) {
			this.url = url.substring(7);
		}
		else {
			this.url = url;
		}
	}

	

	private String fetchContent() throws IOException

	{
		String retVal = "";
		URL u =new URL(url); 
		

		URLConnection conn = u.openConnection();

		conn.setRequestProperty("User-agent", "Chrome/7.0.517.44");

		InputStream in;
		
			try {
				in = conn.getInputStream();

					InputStreamReader inReader = new InputStreamReader(in,"utf-8");

					BufferedReader bufReader = new BufferedReader(inReader);
					String line = null;

					while((line=bufReader.readLine())!=null)
					{
						retVal += line;

					}
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
			//	e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
		//		e.printStackTrace();
			}
		

		return retVal;
	}
	public ArrayList<WebNode> query() throws IOException

	{
		
		
		if(content==null)

		{

			content= fetchContent();

		}
		

		
		Document doc = Jsoup.parse(content);
		//System.out.println(doc.text());
		Elements lis = doc.select("div");
		// System.out.println(lis);
		int success = 0;
		int j = 0;
		while(success<3 )
			if(lis.select("a").get(j).attr("href").equals(null)) {
				j++;
				continue;
			}
			if(lis.select("a").get(j).attr("href").subSequence(0,4).equals("http")) {
					 String subpage = lis.select("a").get(j).attr("href");
						WebNode node = new WebNode(new WebPage(subpage,"title"));
						subpages.add(node);
						success++;
						j++;
				 }
				 else {
					 j++;
				 }
		return subpages;
	

	}

	
}