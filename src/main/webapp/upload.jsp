<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 1/10/2022
  Time: 1:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- Main content--%>
<form action="UploadFileServlet" method=post" enctype="multipart/form-data" style="border:solid 1px #000">
    Select File to Upload
</form>
<input type="file" name="fileName"><br>
<input type="submit" value="Upload">

<form action="UploadFileServlet" method="post" enctype="multipart/form-data" style="border:solid 1px #000">
    <div class="file_upload_wrapper">
         <input type="file" id="input-file-now"
    name ="fileName" class ="fileupload" disabled="disabled" data-default-file = "">
    </div>
    <input class="btn btn-primary" type="submit" value="upload">
</form>

</body>
<script>
    function zoom(e) {
        var zoomer = e.currentTarget;
        e.offsetX ? offsetX = e.offsetX : offsetX = e.touches[0].pageX
        e.offsetY ? offsetY = e.offsetY : offsetX = e.touches[0].pageX
        x = (offsetX / zoomer.offsetWidth) * 100
        y = (offsetY / zoomer.offsetHeight) * 100
        zoomer.style.backgroundPosition = x + "% " + y + "%";
    }
</script>
</html>
