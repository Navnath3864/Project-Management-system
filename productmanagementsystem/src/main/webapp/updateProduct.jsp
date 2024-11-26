<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="saveproduct" items="data" var="product">
	
		<br>
		Product Id:<input type="number" name="productId" value="${data.productId}">
		<br>
		Product name:<input type="text" name="productName" value="${data.productName}">
		<br>
		Product Description:<input type="text" name="productDescription" value="${data.productDescription}">
		<br>
		Product Quantity:<input type="text" name="productQuantity" value="${data.productQuantity}">
		<br>
		Product Price:<input type="text" name="productPrice" value="${data.productPrice}">
		<br>
		Supplier id:<input type="number" name="supplier.supplierId" value="${data.supplier.supplierId}">
		<br>
		Supplier name:<input type="text" name="supplier.supplierName" value="${data.supplier.supplierName}">
		<br>
		Supplier contact:<input type="text" name="supplier.supplierContact" value="${data.supplier.supplierContact}">
		<br>
		
		<input type="submit" value="UpdateProduct">
		<br>
	</form>
</body>
</html>