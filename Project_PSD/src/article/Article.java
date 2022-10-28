package article;

import java.sql.Date;

public class Article {

	private int articleId, adminId;
	private String title, author, description;

	
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Article(int articleId, int adminId, String title, String author, String description) {
		super();
		this.articleId = articleId;
		this.adminId = adminId;
		this.title = title;
		this.author = author;
		this.description = description;
	}
	
	
}
