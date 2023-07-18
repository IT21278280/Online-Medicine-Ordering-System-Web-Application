package com.checkout;

public class Checkout {
	
	private int idcheckout;
	private String FirstName;
	private String LastName;
	private String Street;
	private String Apartment;
	private String Country;
	private String Postal;
	private String email;
	private String phone;
	
	
	
	public Checkout(int idcheckout, String FirstName, String LastName, String Street, String Apartment, String Country,
			String Postal, String email, String phone) {
		super();
		this.idcheckout = idcheckout;
		this.FirstName = FirstName;
		this.LastName = LastName;
		this.Street = Street;
		this.Apartment = Apartment;
		this.Country = Country;
		this.Postal = Postal;
		this.email = email;
		this.phone = phone;
	}
	
	
	public int getIdcheckout() {
		return idcheckout;
	}
	
	public String getFirstName() {
		return FirstName;
	}
	
	public String getLastName() {
		return LastName;
	}
	
	public String getStreet() {
		return Street;
	}
	
	public String getApartment() {
		return Apartment;
	}
	
	public String getCountry() {
		return Country;
	}
	
	public String getPostal() {
		return Postal;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getPhone() {
		return phone;
	}
	
	
	
	
	
	
	

}
