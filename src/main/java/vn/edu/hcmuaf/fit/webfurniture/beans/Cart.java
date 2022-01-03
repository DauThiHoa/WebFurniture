package vn.edu.hcmuaf.fit.webfurniture.beans;

import java.io.Serializable;

public class Cart implements Serializable {
    private static final long serialVersionUID = 1L ;
    private static Cart instance ;
    private int id ;

    private Cart (){

    }
    public static Cart getInstance(){
        if ( instance == null ){
            instance = new Cart() ;
        }
        return instance ;
    }
}
