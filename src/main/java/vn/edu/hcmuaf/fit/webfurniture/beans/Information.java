package vn.edu.hcmuaf.fit.webfurniture.beans;

import java.io.Serializable;

public class Information implements Serializable {
    private static final long serialVersionUID = 1L ;
    private static Information instance ;
    private String idInformation ;
    private String companyName ;
    private String address ;
    private String shareIcon ;
    private String browserIcon ;
    private String hotline ;
    private String email ;
    private String copyright ;
    private String facebook ;
    private String twitter ;
    private String youtube ;
    private String instagram ;

    public Information() {
    }

    public Information(String idInformation, String companyName, String address, String shareIcon, String browserIcon, String hotline, String email, String copyright, String facebook, String twitter, String youtube, String instagram) {
        this.idInformation = idInformation;
        this.companyName = companyName;
        this.address = address;
        this.shareIcon = shareIcon;
        this.browserIcon = browserIcon;
        this.hotline = hotline;
        this.email = email;
        this.copyright = copyright;
        this.facebook = facebook;
        this.twitter = twitter;
        this.youtube = youtube;
        this.instagram = instagram;
    }

    public static Information getInstance() {
        return instance;
    }

    public static void setInstance(Information instance) {
        Information.instance = instance;
    }

    public String getIdInformation() {
        return idInformation;
    }

    public void setIdInformation(String idInformation) {
        this.idInformation = idInformation;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getShareIcon() {
        return shareIcon;
    }

    public void setShareIcon(String shareIcon) {
        this.shareIcon = shareIcon;
    }

    public String getBrowserIcon() {
        return browserIcon;
    }

    public void setBrowserIcon(String browserIcon) {
        this.browserIcon = browserIcon;
    }

    public String getHotline() {
        return hotline;
    }

    public void setHotline(String hotline) {
        this.hotline = hotline;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCopyright() {
        return copyright;
    }

    public void setCopyright(String copyright) {
        this.copyright = copyright;
    }

    public String getFacebook() {
        return facebook;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public String getTwitter() {
        return twitter;
    }

    public void setTwitter(String twitter) {
        this.twitter = twitter;
    }

    public String getYoutube() {
        return youtube;
    }

    public void setYoutube(String youtube) {
        this.youtube = youtube;
    }

    public String getInstagram() {
        return instagram;
    }

    public void setInstagram(String instagram) {
        this.instagram = instagram;
    }

    @Override
    public String toString() {
        return "Information{" +
                "idInformation=" + idInformation +
                ", companyName='" + companyName + '\'' +
                ", address='" + address + '\'' +
                ", shareIcon='" + shareIcon + '\'' +
                ", browserIcon='" + browserIcon + '\'' +
                ", hotline='" + hotline + '\'' +
                ", email='" + email + '\'' +
                ", copyright='" + copyright + '\'' +
                ", facebook='" + facebook + '\'' +
                ", twitter='" + twitter + '\'' +
                ", youtube='" + youtube + '\'' +
                ", instagram='" + instagram + '\'' +
                '}';
    }
}
