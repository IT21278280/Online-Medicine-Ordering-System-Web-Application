package com.phramacy;

public class Pharamacy {
	private int id;
	private String name;
	private String code;
	private String image;
	private String price;
	private String description;
	
	private String base64Image;
	
	public Pharamacy(int id, String name, String code, String image, String price, String description) {
		super();
		this.id = id;
		this.name = name;
		this.code = code;
		this.image = image;
		this.price = price;
		this.description = description;
	}
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getCode() {
		return code;
	}
	public String getImage() {
		return image;
	}
	public String getPrice() {
		return price;
	}
	public String getDescription() {
		return description;
	}
	public String getBase64Image() {
	    return base64Image;
	}
	public void setBase64Image(String base64Image) {
	    this.base64Image = base64Image;
	}
	
	
	

}
