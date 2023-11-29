<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<body style="background-color: #f7f7f7;">

	<%
	User u=(User)session.getAttribute("userobj");
	%>


	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<h2 class="text-center text-danger">Ebook Management System</h2>
	</div>

	<!-- Start Recent Book -->

	<div class="container">
		<h3 class="text-center">Recent Book</h3>
		<div class="row">
			<%
		BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list2 = dao2.getNewBook();
		for(BookDtls b: list2){
			%>
			<div class="col-md-3">
				<div class="cart crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName() %>" 
							style="width: 150px; height: 200px"
							class="img-thumblin">
						<p><%=b.getBookName() %></p>
						<p><%=b.getAuthor() %></p>
						<p>

							<%
							if (b.getBookCategory().equals("Old")) {
							%>
							Category:<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-5">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
						</div>
						<%
						} else {
						%>
						Category:<%=b.getBookCategory()%></p>
						<div class="row">

							<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm">Add Cart</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm">Add Cart</a>
							<%
							}
							%>
							<a href="view_books.jsp?bid=<%=b.getBookId() %>"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %></a>
						</div>
						<% 
							}%>
							
							
					</div>
				</div>
			</div>
			<% 
		}
		%>
		</div>
		<div class="text-center mt-1">
			<a href="all_recent_book.jsp" class="btn btn-fanger btn-sm text-white">View All</a>
		</div>
	</div>

	<!-- End Recent Book -->
	<hr>

	<!-- Start New Book -->

	<div class="container">
		<h3 class="text-center">New Book</h3>
		<div class="row">


			<%
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getNewBook();
				for (BookDtls b : list) {
				%>
			<div class="col-md-3">
				<div class="cart crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName() %></p>
						<p><%=b.getAuthor() %></p>
						<p>
							Category:<%=b.getBookCategory() %></p>
						<div class="row">
							<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm">Add Cart</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm">Add Cart</a>
							<%
							}
							%>
							 
							<a href="view_books.jsp?bid=<%=b.getBookId() %>" 
								class="btn btn-success btn-sm ml-1">View Details</a> 
							<a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %></a>
						</div>
					</div>
				</div>
			</div>
			<%
				}
				%>
		</div>
		<div class="text-center mt-1">
			<a href="all_new_book.jsp" class="btn btn-fanger btn-sm text-white">View All</a>
		</div>
	</div>

	<!-- End New Book -->
	<hr>

	<!-- Start Old Book -->

	<div class="container">
		<h3 class="text-center">Old Book</h3>
		<div class="row">
			<%
		BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list3 = dao3.getOldBooks();
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
							<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">View Details</a> 
							<a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %></a>
						</div>
							
							
					</div>
				</div>
			</div>
			<% 
		}
		%>
		</div>
		<div class="text-center mt-1">
			<a href="all_old_book.jsp" class="btn btn-fanger btn-sm text-white">View All</a>
		</div>
	</div>

	<!-- End Old Book -->



	<%@include file="all_component/footer.jsp"%>

</body>
</html>