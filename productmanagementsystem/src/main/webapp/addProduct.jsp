<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="saveproduct">
		<br>
		Product Id:<input type="number" name="productId">
		<br>
		Product name:<input type="text" name="productName" >
		<br>
		Product Description:<input type="text" name="productDescription" >
		<br>
		Product Quantity:<input type="text" name="productQuantity" >
		<br>
		Product Price:<input type="text" name="productPrice" >
		<br>
		Supplier id:<input type="number" name="supplier.supplierId" >
		<br>
		Supplier name:<input type="text" name="supplier.supplierName" >
		<br>
		Supplier contact:<input type="text" name="supplier.supplierContact" >
		<br>
		
		<input type="submit" value="ADDPRODUCT">
		<br>
	</form>
</body>
</html>