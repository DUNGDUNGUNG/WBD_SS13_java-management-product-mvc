<%--
  Created by IntelliJ IDEA.
  User: lecongdung
  Date: 22/05/2019
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit product</title>
    <style>
        body {
            margin: 25px;
        }

        .message {
            color: green;
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
    <h2>Edit product</h2>
    <p>
        <c:if test="${requestScope['message']!= null}">
            <span class="message">${requestScope['message']}</span>
        </c:if>
    </p>
    <p>
        <a href="products">Back to product list</a>
    </p>
    <form method="post">
        <fieldset>
            <legend>Product information</legend>
            <table>
                <tr>
                    <th>Name:</th>
                    <td><input type="text" name="name" value="${requestScope['product'].getName()}"></td>
                </tr>
                <tr>
                    <th>Price:</th>
                    <td><input type="text" name="price" value="${requestScope['product'].getPrice()}"></td>
                </tr>
                <tr>
                    <th>Describe:</th>
                    <td><input type="text" name="describe" value="${requestScope['product'].getDescribe()}"></td>
                </tr>
                <tr>
                    <th>Producer:</th>
                    <td><input type="text" name="producer" value="${requestScope['product'].getProducer()}"></td>
                </tr>
                <tr>
                    <th></th>
                    <td><input type="submit" value="Update Product"></td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>
