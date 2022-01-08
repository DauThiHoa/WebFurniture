package vn.edu.hcmuaf.fit.webfurniture.properties;

import java.io.IOException;
import java.util.Properties;

public class AssetProperties {
    private static Properties prop = new Properties();
    static {
        try {
            prop.load(AssetProperties.class.getClassLoader().getResourceAsStream("asset.properties"));
        } catch (IOException ioException) {
            ioException.printStackTrace();
        }
    }

    public static String getBaseUrl() {

        return prop.get("baseUrl").toString();
    }
}
