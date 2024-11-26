<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="3" style="margin-left: auto; margin-right: auto;">
		<tr style="background-color: rgb(227, 221, 221); color: black">
			<th>productId</th>
			<th>productName</th>
			<th>productDescription</th>
			<th>productQuantity</th>
			<th>productPrice</th>
			<th>supplierId</th>
			<th>supplierName</th>
			<th>supplierContact</th>
			<th>Action</th>
		</tr>

		<c:forEach items="${data}" var="product">
			<tr>
				<td>${product.productId}</td>
				<td>${product.productName}</td>
				<td>${product.productDescription}</td>
				<td>${product.productQuantity}</td>
				<td>${product.productPrice}</td>
				<td>${product.supplier.supplierId}</td>
				<td>${product.supplier.supplierName}</td>
				<td>${product.supplier.supplierContact}</td>

				<td><a class="btn danger"
					href="deleteproduct?productId=${product.productId}" role="button">
						<button style="background-color: red; color: white">delete</button>
				</a> <a class="btn btn-primary"
					href="editproduct?productId=${product.productId}" role="button">
						<button style="background-color: green; color: white">edit</button>
				</a></td>

			</tr>
			
		</c:forEach>
	</table>
	</td>
<a class="btn btn-primary" href="/" role="button">
		<button style="margin-left: auto; margin-right: auto; background-color: gray; color: white">Admin Login</button>
	</a>
	<br>
	<br>
<a class="btn btn-primary" href="addproduct" role="button">
		<button style="margin-left: auto; margin-right: auto; background-color: gray; color: white">AddMOREPRODUCT</button>
	</a>
	

</body>
</html>