<%--
  Created by IntelliJ IDEA.
  User: THINKPRO
  Date: 1/16/2022
  Time: 8:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails" %>
<%@ page import="java.util.Map" %>
<%@ page import="vn.edu.hcmuaf.fit.webfurniture.Asset" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <link rel="icon" href="<%=Asset.url("img.png")%>" type="image/png" class="icon">
    <title>SUCCESS</title>
</head>
<body>
<h1 style="color: #1fb5d4">SUCCESS</h1>
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
