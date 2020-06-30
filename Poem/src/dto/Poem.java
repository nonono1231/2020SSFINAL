package dto;

public class Poem {
	private String poemid;
	private String title;
	private String creator;
	private String book;
	private String content;

	public Poem() {
		super();
	}

	public Poem(String poemid, String title, String creator, String book, String content) {
		this.poemid = poemid;
		this.title = title;
		this.creator = creator;
		this.book = book;
		this.content = content;
	}

	public String getPoemID() {
		return poemid;
	}

	public void setpoemID(String poemid) {
		this.poemid = poemid;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public String getBook() {
		return book;
	}

	public void setBook(String book) {
		this.book = book;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}