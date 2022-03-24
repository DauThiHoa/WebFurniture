package vn.edu.hcmuaf.fit.webfurniture.listener;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;

@WebListener
public class FileLocationContextListener implements ServletContextListener, HttpSessionListener, HttpSessionAttributeListener {

    public void contextInitialized(ServletContextEvent servletContextEvent) {
        String rootPath = System.getProperty("catalina.home");
        ServletContext ctx = servletContextEvent.getServletContext();
        String relativePath = ctx.getInitParameter("tempfile.dir");
        File file = new File(rootPath + File.separator + "webapps" + File.separator + relativePath);
        if (!file.exists()) file.mkdir();
        System.out.println("File Directory create to be used for storing files");
        ctx.setAttribute("FILES_DIR_FILE", file);
        ctx.setAttribute("FILE_DIR", rootPath + File.separator + "webapps" + File.separator + relativePath);

    }
    public void contextDestroyed(ServletContextEvent servletContextEvent){

    }
}
