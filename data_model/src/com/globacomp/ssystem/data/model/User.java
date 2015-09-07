package com.globacomp.ssystem.data.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.OrderBy;
import javax.persistence.Table;

@Entity
@Table(name = "user_master")
public class User extends AbstractModel {

	private String firstName;
	
	private String lastName;
	
	private String email;
	
	private String userType;
	
	private String gender;
	
	private String aboutMe;
	
	private String cuisines;
	
	private UserFile profilePic; 
	
	private UserFile userW9Form;
	
	private byte active;
	
	private Login login;
	
	private Set<UserDish> userDishes = new HashSet<UserDish>(0);
	
	private Set<Address> userAddresses = new HashSet<Address>(0);
	
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	@Column(name = "first_name", nullable = false)
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@Column(name = "last_name", nullable = false)
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Column(name = "email", nullable = false)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name = "gender", nullable = false)
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Column(name = "active", nullable = false)
	public byte getActive() {
		return active;
	}

	public void setActive(byte active) {
		this.active = active;
	}

	@OneToOne(fetch=FetchType.LAZY, cascade=CascadeType.ALL, mappedBy="user")
	public Login getLogin() {
		return login;
	}

	public void setLogin(Login login) {
		this.login = login;
	}
	
	public void addLogin(Login login) {
		this.login = login;
		login.setUser(this);
	}
	
	@Column(name = "about_me")
	public String getAboutMe() {
		return aboutMe;
	}

	public void setAboutMe(String aboutMe) {
		this.aboutMe = aboutMe;
	}

	@Column(name = "cuisines")
	public String getCuisines() {
		return cuisines;
	}

	public void setCuisines(String cuisines) {
		this.cuisines = cuisines;
	}
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, 
			mappedBy="user")
	@OrderBy("creationDate DESC")
	public Set<UserDish> getUserDishes() {
		return userDishes;
	}

	public void setUserDishes(Set<UserDish> userDishes) {
		this.userDishes = userDishes;
	}
	
	@OneToOne(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	@JoinColumn(name="profile_pic_id")
	public UserFile getProfilePic() {
		return profilePic;
	}

	public void setProfilePic(UserFile profilePic) {
		this.profilePic = profilePic;
	}

	@OneToOne(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	@JoinColumn(name="w9_form_id")
	public UserFile getUserW9Form() {
		return userW9Form;
	}

	public void setUserW9Form(UserFile userW9Form) {
		this.userW9Form = userW9Form;
	}

	@Column(name="user_type")
	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="user")
	public Set<Address> getUserAddresses() {
		return userAddresses;
	}

	public void setUserAddresses(Set<Address> userAddresses) {
		this.userAddresses = userAddresses;
	}
	
	
	
}
