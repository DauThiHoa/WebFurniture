package vn.edu.hcmuaf.fit.webfurniture.beans;

import java.io.Serializable;
import java.time.LocalDateTime;

public class NewComment implements Serializable {
    private int idNewComment ;
    private String nameCustomer ;
    private String emailCustomer ;
    private LocalDateTime dateSubmitted ;
    private String content ;
    private int idNew ;

    public NewComment() {
    }

    public NewComment(int idNewComment, String nameCustomer, String emailCustomer, LocalDateTime dateSubmitted, String content, int idNew) {
        this.idNewComment = idNewComment;
        this.nameCustomer = nameCustomer;
        this.emailCustomer = emailCustomer;
        this.dateSubmitted = dateSubmitted;
        this.content = content;
        this.idNew = idNew;
    }

    public int getIdNewComment() {
        return idNewComment;
    }

    public void setIdNewComment(int idNewComment) {
        this.idNewComment = idNewComment;
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

    public LocalDateTime getDateSubmitted() {
        return dateSubmitted;
    }

    public void setDateSubmitted(LocalDateTime dateSubmitted) {
        this.dateSubmitted = dateSubmitted;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getIdNew() {
        return idNew;
    }

    public void setIdNew(int idNew) {
        this.idNew = idNew;
    }

    @Override
    public String toString() {
        return "NewComment{" +
                "idNewComment=" + idNewComment +
                ", nameCustomer='" + nameCustomer + '\'' +
                ", emailCustomer='" + emailCustomer + '\'' +
                ", dateSubmitted=" + dateSubmitted +
                ", content='" + content + '\'' +
                ", idNew=" + idNew +
                '}';
    }

}
