package model;

public class ReviewVO extends UserVO {
	private int rid;
	private String gid;
	private String revdate;
	private String content;

	public int getRid() {
		return rid;
	}

	public void setRid(int rid) {
		this.rid = rid;
	}

	public String getGid() {
		return gid;
	}

	public void setGid(String gid) {
		this.gid = gid;
	}

	public String getRevdate() {
		return revdate;
	}

	public void setRevdate(String revdate) {
		this.revdate = revdate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "ReivewVO [rid=" + rid + ", gid=" + gid + ", revdate=" + revdate + ", content=" + content + ", getUid()="
				+ getUid() + ", getUname()=" + getUname() + ", getPhoto()=" + getPhoto() + "]";
	}

}
