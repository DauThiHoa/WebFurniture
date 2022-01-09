package vn.edu.hcmuaf.fit.webfurniture.beans;

import java.io.Serializable;

public class ProductDetails implements Serializable  {
    private static final long serialVersionUID = 1l ;
    private String id ;
    private String name ;
    private String description  ;
    private String trademark  ;
    private String production  ;
    private int priceOld   ;
    private int quantity ;
    private int quantitySold ;
    private String linkImage  ;
    private int priceNew  ;
    private String dateSubmitted  ;
    private String status  ;
    private String idProductGroups  ;
    private String idCategory ;
    private String viewProductDetails    ;

    public ProductDetails() {
    }

    public ProductDetails(String id, String name, String description, String trademark, String production, int priceOld, int quantity, int quantitySold, String linkImage, int priceNew, String dateSubmitted, String status, String idProductGroups, String idCategory, String viewProductDetails) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.trademark = trademark;
        this.production = production;
        this.priceOld = priceOld;
        this.quantity = quantity;
        this.quantitySold = quantitySold;
        this.linkImage = linkImage;
        this.priceNew = priceNew;
        this.dateSubmitted = dateSubmitted;
        this.status = status;
        this.idProductGroups = idProductGroups;
        this.idCategory = idCategory;
        this.viewProductDetails = viewProductDetails;
    }

    public ProductDetails(String id, String name, String description, String trademark, String production, int priceOld, int quantity, String linkImage, int priceNew, String dateSubmitted, String status, String idProductGroups, String idCategory, String viewProductDetails) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.trademark = trademark;
        this.production = production;
        this.priceOld = priceOld;
        this.quantity = quantity;
        this.linkImage = linkImage;
        this.priceNew = priceNew;
        this.dateSubmitted = dateSubmitted;
        this.status = status;
        this.idProductGroups = idProductGroups;
        this.idCategory = idCategory;
        this.viewProductDetails = viewProductDetails;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTrademark() {
        return trademark;
    }

    public void setTrademark(String trademark) {
        this.trademark = trademark;
    }

    public String getProduction() {
        return production;
    }

    public void setProduction(String production) {
        this.production = production;
    }

    public int getPriceOld() {
        return priceOld;
    }

    public void setPriceOld(int priceOld) {
        this.priceOld = priceOld;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getLinkImage() {
        return linkImage;
    }

    public void setLinkImage(String linkImage) {
        this.linkImage = linkImage;
    }

    public int getPriceNew() {
        return priceNew;
    }

    public void setPriceNew(int priceNew) {
        this.priceNew = priceNew;
    }

    public String getDateSubmitted() {
        return dateSubmitted;
    }

    public void setDateSubmitted(String dateSubmitted) {
        this.dateSubmitted = dateSubmitted;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getIdProductGroups() {
        return idProductGroups;
    }

    public void setIdProductGroups(String idProductGroups) {
        this.idProductGroups = idProductGroups;
    }

    public String getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(String idCategory) {
        this.idCategory = idCategory;
    }

    public String getViewProductDetails() {
        return viewProductDetails;
    }

    public void setViewProductDetails(String viewProductDetails) {
        this.viewProductDetails = viewProductDetails;
    }

    public int getQuantitySold() {
        return quantitySold;
    }

    public void setQuantitySold(int quantitySold) {
        this.quantitySold = quantitySold;
    }
// get total money
    public int getTotalMoney (){
        return quantitySold * priceNew ;
    }


}
