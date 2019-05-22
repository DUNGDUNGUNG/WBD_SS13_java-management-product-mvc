<%--
  Created by IntelliJ IDEA.
  User: lecongdung
  Date: 22/05/2019
  Time: 09:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Product</title>
    <style>
        .product {
            font-size: 22px;
        }

        p a {
            color: gold;
        }

        td a {
            color: darkseagreen;
        }

        input {
            color: cadetblue;
            border: 1px solid;
        }
    </style>
</head>
<body>
<div class="product">
    <h2>List Product</h2>
    <p>
        <a href="products?action=create">Create new product</a>
    </p>

    <table style="border: cornflowerblue 1px solid" border="1">
        <form action="products?action=search" method="post">
            <label>
                <input type="text" name="search">
            </label>
        </form>
        <tr>
            <th>Name</th>
            <th>Price</th>
            <th>Describe</th>
            <th>Producer</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${requestScope['products']}" var="pro">
            <tr>
                <td><a href="products?action=view&id=${pro.getId()}">${pro.getName()}</a></td>
                <td>${pro.getPrice()}</td>
                <td>${pro.getDescribe()}</td>
                <td>${pro.getProducer()}</td>
                <td><a href="products?action=edit&id=${pro.getId()}">edit</a></td>
                <td><a href="products?action=delete&id=${pro.getId()}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
