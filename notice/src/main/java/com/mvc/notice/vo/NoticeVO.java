package com.mvc.notice.vo;


public class NoticeVO {
	private int notice_no;
	private String title;
	private String content;
	private String writer;
	private String writeday;
	private int view_count;
	private String is_important;
	
	public NoticeVO() {
		super();
	}

	public NoticeVO(int notice_no, String title, String content, String writer, String writeday, int view_count,
			String is_important) {
		super();
		this.notice_no = notice_no;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.writeday = writeday;
		this.view_count = view_count;
		this.is_important = is_important;
	}

	public int getNotice_no() {
		return notice_no;
	}

	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getWriteday() {
		return writeday;
	}

	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}

	public int getView_count() {
		return view_count;
	}

	public void setView_count(int view_count) {
		this.view_count = view_count;
	}

	public String getIs_important() {
		return is_important;
	}

	public void setIs_important(String is_important) {
		this.is_important = is_important;
	}

	@Override
	public String toString() {
		return "NoticeVO [notice_no=" + notice_no + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", writeday=" + writeday + ", view_count=" + view_count + ", is_important=" + is_important + "]";
	}
	
	
	
}
