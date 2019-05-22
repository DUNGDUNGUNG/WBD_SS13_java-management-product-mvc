<%--
  Created by IntelliJ IDEA.
  User: lecongdung
  Date: 22/05/2019
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Product</title>
    <style>
        div{
            margin: 30px;
            font-size: 22px;
            width: 250px;
            height: 300px;
            border: 1px skyblue solid;
        }
        a {
            color: teal;
        }
    </style>
</head>
<body>
<div>
    <h2>Product details</h2>
    <p>
        <a href="products">Back to product list</a>
    </p>
    <table>
        <tr>
            <th>Name: </th>
            <td>${requestScope["product"].getName()}</td>
        </tr>
        <tr>
            <th>Price: </th>
            <td>${requestScope["product"].getPrice()}</td>
        </tr>
        <tr>
            <th>Describe: </th>
            <td>${requestScope["product"].getDescribe()}</td>
        </tr>
        <tr>
            <th>Producer: </th>
            <td>${requestScope["product"].getProducer()}</td>
        </tr>
    </table>
</div>
</body>
</html>
