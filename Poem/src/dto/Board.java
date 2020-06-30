package dto;

public class Board {
	private String bnum;
	private String bid;
	private String bname;
	private String bsubject;
	private String bcontent;
	private String bdate;
	
	public Board() {
		super();
	}
	
	public Board(String bnum, String bid, String bname, String bsubject, String bcontent, String bdate) {
		this.bnum = bnum;
		this.bid = bid;
		this.bname = bname;
		this.bsubject = bsubject;
		this.bcontent = bcontent;
		this.bdate = bdate;
	}

	public String getbnum() {
		return bnum;
	}

	public void setbnum(String bnum) {
		this.bnum = bnum;
	}
	
	public String getbid() {
		return bid;
	}

	public void setbid(String bid) {
		this.bid = bid;
	}
	
	public String getbname() {
		return bname;
	}

	public void setbname(String bname) {
		this.bname = bname;
	}
	
	public String getbsubject() {
		return bsubject;
	}

	public void setbsubject(String bsubject) {
		this.bsubject = bsubject;
	}
	
	public String getbcontent() {
		return bcontent;
	}

	public void setbcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	
	public String getbdate() {
		return bdate;
	}

	public void setbdate(String bdate) {
		this.bdate = bdate;
	}
		
}
