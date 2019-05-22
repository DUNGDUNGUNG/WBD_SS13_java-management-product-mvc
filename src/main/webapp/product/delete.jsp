<%--
  Created by IntelliJ IDEA.
  User: lecongdung
  Date: 22/05/2019
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting Product</title>
    <style>
        div{
            margin: 30px;
            font-size: 22px;
        }
        fieldset {
            color: chocolate;
            width: 260px;
            height: 160px;
        }

        input {
            border: 1px solid lightcoral;
        }

        a {
            color: teal;
        }
    </style>
</head>
<body>
<div>
    <h2>Delete product</h2>
    <p>
        <a href="products">Back to product list</a>
    </p>
    <form method="post">
        <h3>Are you sure?</h3>
        <fieldset>
            <legend>Product information</legend>
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
                <tr>
                    <th></th>
                    <td><input type="submit" value="Delete Product"></td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>
