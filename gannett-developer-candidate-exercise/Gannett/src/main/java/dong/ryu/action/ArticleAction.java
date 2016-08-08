package dong.ryu.action;

import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import dong.ryu.model.Article;

public class ArticleAction {
	
	final static String url1 = "https://peaceful-springs-7920.herokuapp.com/profile/";
	
	private List<Article> articles;
	private boolean theme;

	public String execute() throws Exception	{
		
		JsonNode profileJson = new ObjectMapper().readTree(new URL(url1));
		
		String profileId = profileJson.get("profileId").toString();
		final String url2 = "https://peaceful-springs-7920.herokuapp.com/content/" + profileId;

		JsonNode contentJson = new ObjectMapper().readTree(new URL(url2));
			
		JsonNode articleNodes = contentJson.get("articles");
		articles = new ArrayList<Article>();
		
		for (JsonNode it : articleNodes)	{
			Article article = new Article();
			article.setTitle(it.get("title").toString().replace("\"", ""));						
			article.setSummary(it.get("summary").toString().replace("\"", ""));
			article.setHref(it.get("href").toString().replace("\"", ""));			
			articles.add(article);
		}
		
		String themeString = contentJson.get("theme").toString().replace("\"", "");
		
		if (themeString.trim().equalsIgnoreCase("well"))	{
			theme = true;
		}	else	{
			theme = false;
		}
				
		return "success";
	}

	public List<Article> getArticles() {
		return articles;
	}

	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}

	public boolean getTheme() {
		return theme;
	}

	public void setTheme(boolean theme) {
		this.theme = theme;
	}

	
}
