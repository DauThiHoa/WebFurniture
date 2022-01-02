package vn.edu.hcmuaf.fit.webfurniture.db;

import java.io.IOException;
import java.util.Properties;

public class DBProperties {
   // private static Properties prop = new Properties();
   private static Properties prop = null;
    static {
        try {
            prop.load(DBProperties.class.getClassLoader().getResourceAsStream("db.propertie"));
        } catch (IOException ioException) {
            ioException.printStackTrace();
        }
    }

   /* public static String getDbHost() {
        return prop.get("db.hos").toString();

    }

    public static String getDbPort() {
        return prop.get("db.por").toString();

    }

    public static String getUsername() {
        return prop.get("db.usernam").toString();
        return null;
    }

    public static String getPassword() {
        return prop.get("db.passwor").toString();

    }

    public static String getDbName() {
        return prop.get("db.databaseNam").toString();

    }
*/
}
