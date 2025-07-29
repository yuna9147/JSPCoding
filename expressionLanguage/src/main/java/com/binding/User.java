package com.binding;


public class User  {
	private String name;
	private String id;
	private String num;
	private Address address;
	
	
	public User() {
		super();
	}


	public User(String name, String id, String num) {
		super();
		this.name = name;
		this.id = id;
		this.num = num;
	}
	
	

	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getNum() {
		return num;
	}


	public void setNum(String num) {
		this.num = num;
	}


	public Address getAddress() {
		return address;
	}


	public void setAddress(Address address) {
		this.address = address;
	}
	
	
}
