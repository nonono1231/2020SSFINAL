package dto;

public class Poet {
	private String pid;
	private String pname;
	private String pbirth;
	private String pdeath;
	private String plife;
	
	public Poet() {
		super();
	}
	
	public Poet(String pid, String pname, String pbirth, String pdeath, String plife) {
		this.pid = pid;
		this.pname = pname;
		this.pbirth = pbirth;
		this.pdeath = pdeath;
		this.plife = plife;
	}
	
	
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPbirth() {
		return pbirth;
	}
	public void setPbirth(String pbirth) {
		this.pbirth = pbirth;
	}
	public String getPdeath() {
		return pdeath;
	}
	public void setPdeath(String pdeath) {
		this.pdeath = pdeath;
	}
	public String getPlife() {
		return plife;
	}
	public void setPlife(String plife) {
		this.plife = plife;
	}
}
