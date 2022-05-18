package com.validation.model;

import java.util.List;
import java.util.Locale;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class User {

	@NotNull(message="Please enter the FirstName")
	@NotEmpty(message="Please fill the FirstName")
	private String firstName;
	
	@NotNull(message="Please enter the LastName")
	@NotEmpty(message="Please fill the FirstName")
	private String lastName;
	
	@Min(value=30, message="Min weight must be 30 kg")
	@NotNull(message="Please enter the weight")
	private float weight;
	
	
	@Min(value=150, message="Min height must be 150 cm")
	@NotNull(message="Please enter the height")
	private float height;
	private String result;
	private float ratio;

	// change limit digits to one next to "."
	private float limitDigits(float number) {
	    return Float.valueOf(String.format(Locale.getDefault(), "%.1f", number));
	}
	
	//return ratio in format "f.f"
	public float getRatio() {
		this.ratio=(this.weight)/(((this.height)/100)*((this.height)/100));
		return limitDigits(this.ratio);
	}
	
	public String getResult() {
		
		if(ratio<18.5) {this.result="Underweight";};
		if((ratio>=18.5)&&(ratio<=24.9)) {this.result="Normal Weight";};	
		if((ratio>=25)&&(ratio<=29.9)) {this.result="Overweight";}
		if(ratio>29.9){this.result="Obesity";};
		
		return this.result;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public float getWeight() {
		return weight;
	}

	public void setWeight(float weight) {
		this.weight = weight;
	}

	public float getHeight() {
		return height;
	}

	public void setHeight(float height) {
		this.height = height;
	}

	public float calcBmi(float weight, float height) {
		return weight / (height * height);

	}

}
