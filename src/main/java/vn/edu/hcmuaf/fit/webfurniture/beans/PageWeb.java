package vn.edu.hcmuaf.fit.webfurniture.beans;

import java.io.Serializable;

public class PageWeb implements Serializable {
    private String id ;
    private String nameCategory ;
    private String linkImage ;
    private String modules ;
    private String display ;

    public PageWeb() {
    }

    public PageWeb(String id, String nameCategory, String linkImage, String modules, String display) {
        this.id = id;
        this.nameCategory = nameCategory;
        this.linkImage = linkImage;
        this.modules = modules;
        this.display = display;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNameCategory() {
        return nameCategory;
    }

    public void setNameCategory(String nameCategory) {
        this.nameCategory = nameCategory;
    }

    public String getLinkImage() {
        return linkImage;
    }

    public void setLinkImage(String linkImage) {
        this.linkImage = linkImage;
    }

    public String getModules() {
        return modules;
    }

    public void setModules(String modules) {
        this.modules = modules;
    }

    public String getDisplay() {
        return display;
    }

    public void setDisplay(String display) {
        this.display = display;
    }

}
