
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Property</title>
<link rel="stylesheet" href="/CSS/addProperties.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<%@ include file="../includes/header.jsp"%>
<body>
	<div class="container3">
		<h1>Update Property</h1>

		<c:if test="${not empty message}">
			<div class="message success">${message}</div>
		</c:if>
		<c:if test="${not empty errorMessage}">
			<div class="message error">${errorMessage}</div>
		</c:if>

		<form action="/updateProperty" method="post"
			enctype="multipart/form-data">
			<input type="hidden" name="id" value="${property.id}" />

			<div class="form-group">
				<label for="propertyName">Property Name:</label> <input type="text"
					id="propertyName" name="propertyName"
					value="${property.propertyName}" required />
			</div>

			<div class="form-group">
				<label for="propertyAddress">Address:</label> <input type="text"
					id="propertyAddress" name="propertyAddress"
					value="${property.propertyAddress}" required />
			</div>

			<div class="form-group">
				<label for="propertyType">Type:</label> <select id="propertyType"
					name="propertyType" required>
					<option value="Apartment"
						${property.propertyType == 'Apartment' ? 'selected' : ''}>Apartment</option>
					<option value="House"
						${property.propertyType == 'House' ? 'selected' : ''}>House</option>
					<option value="Commercial"
						${property.propertyType == 'Commercial' ? 'selected' : ''}>Commercial</option>
					<option value="Land"
						${property.propertyType == 'Land' ? 'selected' : ''}>Land</option>
				</select>
			</div>
			<div class="form-group">
				<label for="propertyPrice">Price:</label> <input type="number"
					id="propertyPrice" name="propertyPrice"
					value="${property.propertyPrice}" required />
			</div>

			<div class="form-group">
				<label for="propertyDescription">Description:</label>
				<textarea id="propertyDescription" name="propertyDescription"
					required>${property.propertyDescription}</textarea>
			</div>

			<div class="form-group">
				<label for="availability">Availability:</label> <select
					id="availability" name="availability" required>
					<option value="Available"
						${property.availability == 'Available' ? 'selected' : ''}>Available</option>
					<option value="Not Available"
						${property.availability == 'Not Available' ? 'selected' : ''}>Not
						Available</option>
				</select>
			</div>

			<div class="form-group">
				<label for="propertyImage">Image:</label> <input type="file"
					id="propertyImage" name="propertyImage" /> <img
					src="/PropertyImages/${property.propertyImage}"
					alt="Current Property Image" width="100" />
			</div>

			<button type="submit">Update Property</button>
		</form>
	</div>

	
</body>
</html>
