import java.io.IOException;
import java.util.ArrayList;

public class WebPage {
	public String url;
	public String name;
	public WordCounter counter;
	public int score;
	
	public WebPage(String url, String name){
		this.url = url;
		this.name = name;
		this.counter = new WordCounter(url);	
	}
	
	public void setScore(ArrayList<Keyword> keywords) throws IOException{
		score = 0;
//		1. calculate score
		for(Keyword key: keywords) {
			score += key.weight*counter.countKeyword(key.name);

			int retVal = 0;
			int fromIdx = 0;
			int found = -1;
		
			while ((found = name.indexOf(key.name, fromIdx)) != -1){
			    retVal++;
			    fromIdx = found + key.name.length();
			}
			score += key.weight*retVal;
		}
	}	
}