package com.binding;

public class Address {
	private String city;
	private String zipcode;
	
	public Address() {
		super();
	}
	
	public Address(String city, String zipcode) {
		super();
		this.city = city;
		this.zipcode = zipcode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	
	
}
