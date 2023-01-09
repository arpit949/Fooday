package com.fooday.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "restaurant_table")
public class RestaurantVo 
{
	@Id
	@Column(name="restaurant_Id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@ManyToOne
	LoginVo loginvo;
	
	@Column(name = "restaurant_Name")
	private String restaurantName;
	
	@ManyToOne
	StateVo statevo;
	
	@ManyToOne
	CityVo cityvo;
	
	@ManyToOne
	AreaVo areavo;
	
	@Column(name = "restaurant_Address")
	private String restaurantAddress;
	
	@Column(name = "restaurant_Address_Pincode")
	private String restaurantAddressPincode;

	@Column(name = "gst_Number")
	private String gstNumber;
	
	@Column(name = "contact_Number")
	private String contactNumber;
	
	@Column(name = "images")
	private String image="";
	
	@Column(name = "profile_Image")
	private String profileImage="";
	
	@Column(name = "payment_Method")
	private String paymentMethod;
	
	@Column(name = "about")
	private String about="";
	
	@Column(name = "restaurant_type")
	private String restaurantType;
	
	@Column(name = "delivery_Charges")
	private String deliveryCharges;

	@Column(name = "deliveryOrPickup")
	private String deliveryOrPickup;

	
	public String getProfileImage() {
		return profileImage;
	}

	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public String getDeliveryCharges() {
		return deliveryCharges;
	}

	public void setDeliveryCharges(String deliveryCharges) {
		this.deliveryCharges = deliveryCharges;
	}

	public String getDeliveryOrPickup() {
		return deliveryOrPickup;
	}

	public void setDeliveryOrPickup(String deliveryOrPickup) {
		this.deliveryOrPickup = deliveryOrPickup;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LoginVo getLoginvo() {
		return loginvo;
	}

	public void setLoginvo(LoginVo loginvo) {
		this.loginvo = loginvo;
	}

	public String getRestaurantName() {
		return restaurantName;
	}

	public void setRestaurantName(String restaurantName) {
		this.restaurantName = restaurantName;
	}

	public StateVo getStatevo() {
		return statevo;
	}

	public void setStatevo(StateVo statevo) {
		this.statevo = statevo;
	}

	public CityVo getCityvo() {
		return cityvo;
	}

	public void setCityvo(CityVo cityvo) {
		this.cityvo = cityvo;
	}

	public AreaVo getAreavo() {
		return areavo;
	}

	public void setAreavo(AreaVo areavo) {
		this.areavo = areavo;
	}

	public String getRestaurantAddress() {
		return restaurantAddress;
	}

	public void setRestaurantAddress(String restaurantAddress) {
		this.restaurantAddress = restaurantAddress;
	}

	public String getRestaurantAddressPincode() {
		return restaurantAddressPincode;
	}

	public void setRestaurantAddressPincode(String restaurantAddressPincode) {
		this.restaurantAddressPincode = restaurantAddressPincode;
	}

	public String getGstNumber() {
		return gstNumber;
	}

	public void setGstNumber(String gstNumber) {
		this.gstNumber = gstNumber;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getRestaurantType() {
		return restaurantType;
	}

	public void setRestaurantType(String restaurantType) {
		this.restaurantType = restaurantType;
	}
	
}
