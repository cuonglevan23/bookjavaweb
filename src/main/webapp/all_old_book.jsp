<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Old Book</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/a.jpg");
	height: 400px;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.crd-ho:hover {
	background: #fcf7f7;
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-3">
			<%
		BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list3 = dao3.getAllOldBooks();
		for(BookDtls b: list3){
			%>
			<div class="col-md-3">
				<div class="cart crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p><%=b.getBookName() %></p>
						<p><%=b.getAuthor() %></p>
						<p><%=b.getBookCategory() %></p>
						<div class="row">
							<a href="view_books.jsp?bid=<%=b.getBookId() %>"  class="btn btn-success btn-sm ml-5">View Details</a> 
							<a href=""class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %></a>
						</div>
							
							
					</div>
				</div>
			</div>
			<% 
		}
		%>
		</div>
	</div>
</body>
</html>