package vn.edu.hcmuaf.fit.webfurniture.beans;

import java.io.Serializable;

public class Profile implements Serializable  {
    private int idProfile ;
    private String username ;
    private String email;
    private String firstname;
    private String lastname;
    private String address;
    private String city;
    private String country;
    private String postalcode;
    private String aboutme;
    private int age;
    private int friends;
    private int photos;
    private int comments;
    private String description;

    public Profile() {
    }

    public Profile(int idProfile, String username, String email, String firstname, String lastname, String address, String city, String country, String postalcode, String aboutme, int age, int friends, int photos, int comments, String description) {
        this.idProfile = idProfile;
        this.username = username;
        this.email = email;
        this.firstname = firstname;
        this.lastname = lastname;
        this.address = address;
        this.city = city;
        this.country = country;
        this.postalcode = postalcode;
        this.aboutme = aboutme;
        this.age = age;
        this.friends = friends;
        this.photos = photos;
        this.comments = comments;
        this.description = description;
    }

    public int getIdProfile() {
        return idProfile;
    }

    public void setIdProfile(int idProfile) {
        this.idProfile = idProfile;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPostalcode() {
        return postalcode;
    }

    public void setPostalcode(String postalcode) {
        this.postalcode = postalcode;
    }

    public String getAboutme() {
        return aboutme;
    }

    public void setAboutme(String aboutme) {
        this.aboutme = aboutme;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getFriends() {
        return friends;
    }

    public void setFriends(int friends) {
        this.friends = friends;
    }

    public int getPhotos() {
        return photos;
    }

    public void setPhotos(int photos) {
        this.photos = photos;
    }

    public int getComments() {
        return comments;
    }

    public void setComments(int comments) {
        this.comments = comments;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Profile{" +
                "idProfile=" + idProfile +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", firstname='" + firstname + '\'' +
                ", lastname='" + lastname + '\'' +
                ", address='" + address + '\'' +
                ", city='" + city + '\'' +
                ", country='" + country + '\'' +
                ", postalcode='" + postalcode + '\'' +
                ", aboutme='" + aboutme + '\'' +
                ", age=" + age +
                ", friends=" + friends +
                ", photos=" + photos +
                ", comments=" + comments +
                ", description='" + description + '\'' +
                '}';
    }

}
