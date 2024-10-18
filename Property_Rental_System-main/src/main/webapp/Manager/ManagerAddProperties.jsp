<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Property</title>
    <link rel="stylesheet" href="/CSS/addProperties.css">
</head>
<%@ include file="../includes/header.jsp" %>
<body>
    <div class="container3">
        <h1>Add New Property</h1>

        <c:if test="${not empty message}">
            <div class="message success">${message}</div>
        </c:if>
        <c:if test="${not empty errorMessage}">
            <div class="message error">${errorMessage}</div>
        </c:if>

        <form action="/addProperty" method="post" id="propertyForm" enctype="multipart/form-data" novalidate>
            <label for="propertyName">Property Name:</label>
            <input type="text" id="propertyName" name="propertyName" placeholder="Enter property Name" required>

            <label for="propertyAddress">Address:</label>
            <input type="text" id="propertyAddress" name="propertyAddress" placeholder="Enter Property Address" required>

            <label for="propertyType">Type:</label>
            <select id="propertyType" name="propertyType" required>
                <option value="Apartment">Apartment</option>
                <option value="House">House</option>
                <option value="Commercial">Commercial</option>
                <option value="Land">Land</option>
            </select>

            <label for="propertyPrice">Price:</label>
            <input type="number" id="propertyPrice" name="propertyPrice" step="0.01" placeholder="Enter Property Price" required>

            <label for="propertyDescription">Description:</label>
            <textarea id="propertyDescription" name="propertyDescription" rows="4" required></textarea>

            <label for="propertyStatus">Status:</label>
            <select id="propertyStatus" name="propertyStatus" required>
                <option value="Available">Available</option>
                <option value="Not Available">Not Available</option>
            </select>

            <label for="propertyImage">Upload Image:</label>
            <input type="file" id="propertyImage" name="propertyImage" accept="image/*">

           

            <button type="submit">Add Property</button>
        </form>
    </div>

   
   
</body>
</html>
