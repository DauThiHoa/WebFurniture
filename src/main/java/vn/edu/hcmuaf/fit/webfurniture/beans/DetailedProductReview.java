package vn.edu.hcmuaf.fit.webfurniture.beans;

public class DetailedProductReview {
    private static final long serialVersionUID = 1L ;
    private static DetailedProductReview instance ;

    private int id ;
    private String title ;
    private String evaluate ;
    private String nameCustomer;
    private String emailCustomer;
    private String dateSubmitted ;
    private String content ;
    private String linkImage ;
    private String idProductDetails ;

    public DetailedProductReview() {
    }

    public DetailedProductReview(int id, String title, String evaluate, String nameCustomer, String emailCustomer, String dateSubmitted, String content, String linkImage, String idProductDetails) {
        this.id = id;
        this.title = title;
        this.evaluate = evaluate;
        this.nameCustomer = nameCustomer;
        this.emailCustomer = emailCustomer;
        this.dateSubmitted = dateSubmitted;
        this.content = content;
        this.linkImage = linkImage;
        this.idProductDetails = idProductDetails;
    }

    public static DetailedProductReview getInstance() {
        return instance;
    }

    public static void setInstance(DetailedProductReview instance) {
        DetailedProductReview.instance = instance;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getEvaluate() {
        return evaluate;
    }

    public void setEvaluate(String evaluate) {
        this.evaluate = evaluate;
    }

    public String getNameCustomer() {
        return nameCustomer;
    }

    public void setNameCustomer(String nameCustomer) {
        this.nameCustomer = nameCustomer;
    }

    public String getEmailCustomer() {
        return emailCustomer;
    }

    public void setEmailCustomer(String emailCustomer) {
        this.emailCustomer = emailCustomer;
    }

    public String getDateSubmitted() {
        return dateSubmitted;
    }

    public void setDateSubmitted(String dateSubmitted) {
        this.dateSubmitted = dateSubmitted;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getLinkImage() {
        return linkImage;
    }

    public void setLinkImage(String linkImage) {
        this.linkImage = linkImage;
    }

    public String getIdProductDetails() {
        return idProductDetails;
    }

    public void setIdProductDetails(String idProductDetails) {
        this.idProductDetails = idProductDetails;
    }
}
