<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Property List</title>
    <link rel="stylesheet" href="/CSS/ShowProperties.css">

</head>
<%@ include file="../includes/header.jsp"%>
<body>
    <div class="container3">
        <h1>Property Lists</h1>
        
        <c:if test="${not empty message}">
            <div class="message success">${message}</div>
        </c:if>
        <c:if test="${not empty errorMessage}">
            <div class="message error">${errorMessage}</div>
        </c:if>
        
        <div class="search-pagination">
            <input type="text" id="searchInput" placeholder="Search by type" onkeyup="searchProperties()">
        </div>
        
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Property Name</th>
                    <th>Address</th>
                    <th>Type</th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Status</th>
                    <th>Image</th>
                    <th>Actions</th>
                    <th>Location</th>
                </tr>
            </thead>
            <tbody id="propertyTableBody">
                <c:forEach var="property" items="${properties}">
                    <tr class="property-details">
                        <td>${property.id}</td>
                        <td>${property.propertyName}</td>
                        <td>${property.propertyAddress}</td>
                        <td class="property-type">${property.propertyType}</td>
                        <td>${property.propertyPrice}</td>
                        <td>${property.propertyDescription}</td>
                        <td>${property.availability}</td>
                        <td><img src="/PropertyImages/${property.propertyImage}" alt="Property Image" width="100"></td>
                        <td class="button">
                            <a href="${property.id}" class="btn btn-primary" style="margin-right: 10px;">
                                <i class="fas fa-edit"></i> Update
                            </a>
                            <form action="/deleteProperty/${property.id}" method="post" style="display: inline;" onsubmit="return confirm('Are you sure you want to delete this property?');">
                                <button type="submit" class="btn btn-danger">
                                    <i class="fas fa-trash-alt"></i> Delete
                                </button>
                            </form>
                        </td>
                       
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    
</body>
</html>
