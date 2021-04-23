package com.ania.springsecurity.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.LinkedHashMap;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

public class Transport {

	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	private String pickUpCompanyName;

	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	private String pickUpStreet;

	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	private String pickUpCity;

	private String pickUpPostalCode;
	private String pickUpCountry;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date pickUpDate;

	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	private String deliveryCompanyName;

	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	private String deliveryStreet;

	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	private String deliveryCity;

	private String deliveryPostalCode;

	private String deliveryCountry;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date deliveryDate;

	private LinkedHashMap<String, String> countryOptions;

	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	private String companyName;

	private String street;
	private String city;
	private String postalCode;
	private String country;

	@Pattern(regexp = ".+@.+\\.[a-z]+", message = "The email address is invalid")
	private String email;

	private String note;

	public Transport() {

		countryOptions = new LinkedHashMap<>();

		countryOptions.put("PL", "Poland");
		countryOptions.put("FR", "France");
		countryOptions.put("DE", "Germany");
		countryOptions.put("ES", "Spain");
		countryOptions.put("CH", "Switzerland");
		countryOptions.put("GB", "Great Britain");
		countryOptions.put("IT", "Italy");
		countryOptions.put("AT", "Austria");
		countryOptions.put("NL", "Netherlands");
		countryOptions.put("BE", "Belgium");

	}

	private String[] meansOfTransport;
	private String[] reelOrPallet;

	private String weight;
	private String numberOfReelOrPallet;
	private String freightPrice;
	private String currency;

	public String getPickUpCompanyName() {
		return pickUpCompanyName;
	}

	public void setPickUpCompanyName(String pickUpCompanyName) {
		this.pickUpCompanyName = pickUpCompanyName;
	}

	public String getPickUpStreet() {
		return pickUpStreet;
	}

	public void setPickUpStrit(String pickUpStreet) {
		this.pickUpStreet = pickUpStreet;
	}

	public String getPickUpCity() {
		return pickUpCity;
	}

	public void setPickUpCity(String pickUpCity) {
		this.pickUpCity = pickUpCity;
	}

	public String getPickUpPostalCode() {
		return pickUpPostalCode;
	}

	public void setPickUpPostalCode(String pickUpPostalCode) {
		this.pickUpPostalCode = pickUpPostalCode;
	}

	public String getPickUpCountry() {
		return pickUpCountry;
	}

	public void setPickUpCountry(String pickUpCountry) {
		this.pickUpCountry = pickUpCountry;
	}

	public Date getPickUpDate() {
		return pickUpDate;
	}

	public void setPickUpDate(Date pickUpDate) {
		this.pickUpDate = pickUpDate;
	}

	public String getDeliveryCompanyName() {
		return deliveryCompanyName;
	}

	public void setDeliveryCompanyName(String deliveryCompanyName) {
		this.deliveryCompanyName = deliveryCompanyName;
	}

	public String getDeliveryStreet() {
		return deliveryStreet;
	}

	public void setDeliveryStrit(String deliveryStreet) {
		this.deliveryStreet = deliveryStreet;
	}

	public String getDeliveryCity() {
		return deliveryCity;
	}

	public void setDeliveryCity(String deliveryCity) {
		this.deliveryCity = deliveryCity;
	}

	public String getDeliveryPostalCode() {
		return deliveryPostalCode;
	}

	public void setDeliveryPostalCode(String deliveryPostalCode) {
		this.deliveryPostalCode = deliveryPostalCode;
	}

	public String getDeliveryCountry() {
		return deliveryCountry;
	}

	public void setDeliveryCountry(String deliveryCountry) {
		this.deliveryCountry = deliveryCountry;
	}

	public Date getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getNumberOfReelOrPallet() {
		return numberOfReelOrPallet;
	}

	public void setNumberOfReelOrPallet(String numberOfReelOrPallet) {
		this.numberOfReelOrPallet = numberOfReelOrPallet;
	}

	public String getFreightPrice() {
		return freightPrice;
	}

	public void setFreightPrice(String freightPrice) {
		this.freightPrice = freightPrice;
	}

	public void setPickUpStreet(String pickUpStreet) {
		this.pickUpStreet = pickUpStreet;
	}

	public void setDeliveryStreet(String deliveryStreet) {
		this.deliveryStreet = deliveryStreet;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String[] getMeansOfTransport() {
		return meansOfTransport;
	}

	public void setMeansOfTransport(String[] meansOfTransport) {
		this.meansOfTransport = meansOfTransport;
	}

	public String[] getReelOrPallet() {
		return reelOrPallet;
	}

	public void setReelOrPallet(String[] reelOrPallet) {
		this.reelOrPallet = reelOrPallet;
	}

	public LinkedHashMap<String, String> getCountryOptions() {
		return countryOptions;
	}

	public void setCountryOptions(LinkedHashMap<String, String> countryOptions) {
		this.countryOptions = countryOptions;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	@Override
	public String toString() {
		return "Transport [pickUpCompanyName=" + pickUpCompanyName + ", pickUpStreet=" + pickUpStreet + ", pickUpCity="
				+ pickUpCity + ", pickUpPostalCode=" + pickUpPostalCode + ", pickUpCountry=" + pickUpCountry
				+ ", pickUpDate=" + pickUpDate + ", deliveryCompanyName=" + deliveryCompanyName + ", deliveryStreet="
				+ deliveryStreet + ", deliveryCity=" + deliveryCity + ", deliveryPostalCode=" + deliveryPostalCode
				+ ", deliveryCountry=" + deliveryCountry + ", deliveryDate=" + deliveryDate + ", countryOptions="
				+ countryOptions + ", companyName=" + companyName + ", street=" + street + ", city=" + city
				+ ", postalCode=" + postalCode + ", country=" + country + ", email=" + email + ", meansOfTransport="
				+ Arrays.toString(meansOfTransport) + ", reelOrPallet=" + Arrays.toString(reelOrPallet) + ", weight="
				+ weight + ", numberOfReelOrPallet=" + numberOfReelOrPallet + ", freightPrice=" + freightPrice
				+ ", currency=" + currency + ", note=" + note + "]";
	}
}
