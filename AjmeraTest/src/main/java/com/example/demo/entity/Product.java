package com.example.demo.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private String img;	
	
	private String name;
	
	private Long costPrice;
	
	private Long retailPrice;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date createdDate;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date updatedDate;
	
	@OneToMany(mappedBy = "product")
	private List<Category> category;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "vendor_id")
	private Vendor vendor;

	public Product() {
		
	}	


	public Product(Long id, String img, String name, Long costPrice, Long retailPrice, Date createdDate,
			Date updatedDate, List<Category> category, Vendor vendor) {
		super();
		this.id = id;
		this.img = img;
		this.name = name;
		this.costPrice = costPrice;
		this.retailPrice = retailPrice;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
		this.category = category;
		this.vendor = vendor;
	}



	public Date getCreatedDate() {
		return createdDate;
	}


	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}


	public Date getUpdatedDate() {
		return updatedDate;
	}


	public void setUpdatedDate(Date updatedDate) {
		this.updatedDate = updatedDate;
	}


	public Long getCostPrice() {
		return costPrice;
	}





	public void setCostPrice(Long costPrice) {
		this.costPrice = costPrice;
	}





	public Long getRetailPrice() {
		return retailPrice;
	}





	public void setRetailPrice(Long retailPrice) {
		this.retailPrice = retailPrice;
	}





	public Vendor getVendor() {
		return vendor;
	}



	public void setVendor(Vendor vendor) {
		this.vendor = vendor;
	}



	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Category> getCategory() {
		return category;
	}

	public void setCategory(List<Category> category) {
		this.category = category;
	}
	
	

}
