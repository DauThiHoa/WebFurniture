package vn.edu.hcmuaf.fit.webfurniture.controller;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

@WebServlet(name = "UploadFileServlet", value = "/UploadFileServlet")
public class UploadFileServlet extends HttpServlet {
    private static final long serialVerionUID =1L;
    private ServletFileUpload uploader = null;
    private  String productPath = "/products";

    @Override
    public void init() throws ServletException {
        DiskFileItemFactory fileFactory = new DiskFileItemFactory();
        File fileDir = (File) getServletContext().getAttribute("FILES_DIR_FILE");
        fileFactory.setRepository(fileDir);
        this.uploader = new ServletFileUpload(fileFactory);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (!ServletFileUpload.isMultipartContent(request)){
            throw new ServletException("Content type is not multipart/form-data");

        }
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.write("<html><head></head><body>");
        try {
            List<FileItem> fileItemsList = uploader.parseRequest(request);

            for (FileItem fileItem : fileItemsList){
                System.out.println("FieldName=" + fileItem.getFieldName());
                System.out.println("FileName=" + fileItem.getName());
                System.out.println("ContentType=" + fileItem.getContentType());
                System.out.println("Size in bytes=" + fileItem.getSize());
                File productDir = new File(request.getServletContext().getAttribute("FILES_DIR") + File.separator + productPath);
                if(!productDir.exists())productDir.mkdir();


                File file = new File(productDir.getAbsolutePath()+ File.separator+fileItem.getName());
                if(file.exists())file = new File(productDir.getAbsolutePath() + File.separator + System.currentTimeMillis()+ "-"+ fileItem.getName());
                System.out.println("Absolute Path at server=" + file.getAbsolutePath());
                fileItem.write(file);
                out.write("path" + file.getAbsolutePath());
                out.write("File" + fileItem.getName() + "uploaded successfully.");
                out.write("<br>");
                out.write("<a href=\"UploadDownloadFileServlet?fileName=" + fileItem.getName() + "\">Download" + fileItem.getName() + "</a>");
            }
         }catch(Exception e){
            out.write("Exception in uploading file.");
            }
        out.write("</body></html>");
        }
    }

