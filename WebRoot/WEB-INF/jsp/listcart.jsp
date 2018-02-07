<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>购买的图书信息</title>


  </head>
  
  <body>
    <body style="text-align:center">
	<h1>书籍列表</h1>
	<h2><a href="${pageContext.request.contextPath }/ListBookServlet"  >返回列表</a></h2>

	<table width="70%" border="1" >
		<tr>
			<td>书名</td>
			<td>作者</td>
			<td>单价</td>
			<td>数量</td>
			<td>小计</td>
			<td>操作</td>
		</tr>

		<c:forEach var="entry" items="${cart.map }">
			<tr>
				<td>${entry.value.book.name }</td>
				<td>${entry.value.book.author }</td>
				<td>${entry.value.book.price }</td>
				<td>${entry.value.quantity }</td>
				<td>${entry.value.price }</td>
				<td>
					<a href="">删除</a>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="3">合计</td>
			<td colspan="3">${cart.price}</td>
		</tr>
	</table>
</body>
  </body>
</html>
