<%--
  Created by IntelliJ IDEA.
  User: THINKPRO
  Date: 3/10/2022
  Time: 6:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page language ="java" contentType="text/html; charset=ISO-8859-1"--%>
<%--pageEncoding="ISO-8859-1" import="java.util.Date" %>--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="comment" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Title</title>
    <style>
        figure.zoom {
            background-position: 50% 50%;
            position: relative;
            width: 1000px;
            overflow: hidden;
            cursor: zoom-in;
        }

        figure.zoom img:hover {
            opacity: 0;
        }

        figure.zoom img {
            transition: opacity 0.5s;
            display: block;
            width: 100%;
        }

    </style>
</head>
<body>

<figure class="zoom" style="background:url(Capture1.PNG)" onmousemove="zoom(event)" ontouchmove="zoom(event)">
    <img src="Capture1.PNG" />
</figure>

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
