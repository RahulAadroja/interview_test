package com.example.demo.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Inventory {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private Long costPrice;
	
	private Long inventory;	
	
	private Long retailPrice;
	
	private Date createdDate;
	
	private Date updatedDate;
	
	@ManyToOne
	@JoinColumn(name = "vendor_id")
	private Vendor vendor;
	
	public Inventory() {
		
	}
	

	


	public Inventory(Long id, Long costPrice, Long inventory, Long retailPrice, Date createdDate, Date updatedDate,
			Vendor vendor) {
		super();
		this.id = id;
		this.costPrice = costPrice;
		this.inventory = inventory;
		this.retailPrice = retailPrice;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
		this.vendor = vendor;
	}





	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getCostPrice() {
		return costPrice;
	}

	public void setCostPrice(Long costPrice) {
		this.costPrice = costPrice;
	}


	public Date getCreatedDate() {
		return createdDate;
	}
	
	

	public Long getInventory() {
		return inventory;
	}


	public void setInventory(Long inventory) {
		this.inventory = inventory;
	}


	public Long getRetailPrice() {
		return retailPrice;
	}


	public void setRetailPrice(Long retailPrice) {
		this.retailPrice = retailPrice;
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

	public Vendor getVendor() {
		return vendor;
	}

	public void setVendor(Vendor vendor) {
		this.vendor = vendor;
	}
	
	
	

}
