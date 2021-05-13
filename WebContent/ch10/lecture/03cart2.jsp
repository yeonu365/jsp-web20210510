<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
String product = request.getParameter("product");
String qStr = request.getParameter("q");
int q=0;
if (qStr != null) {
	q = Integer.parseInt(qStr);
}

Object c = session.getAttribute("cart");
Map<String, Integer> cart = (Map<String, Integer>) c;

if (cart == null) {
	cart = new HashMap<String, Integer>();
	session.setAttribute("cart", cart);
}

if (q > 0) {
	Integer before = cart.get(product);
	if (before != null) {
		cart.put(product, before + q);
	} else {
		cart.put(product, q);
	}
}
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<script>
$(document).ready(function() {
	function updatePrice() {
		var prod = $("#select1").val();
		var qty = $("#input1").val();
		var sum = 0;
		switch(prod) {
		case "shoes":
			sum = 1000 * qty;
			break;
		case "computer":
			sum = 20000 * qty;
			break;
		case "chair":
			sum = 2000 * qty;
			break;
		case "book":
			sum = 3000 * qty;
			break;
		}
		$("#input2").val(sum);
	}
	
	$("#select1").change(updatePrice);
	$("#input1").change(updatePrice);
	
});
</script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<form>
	상품
	<select name="product" id="select1">
			<option value="shoes">신발</option>
			<option value="computer">컴퓨터</option>
			<option value="chair">의자</option>
			<option value="book">책</option> 		
		</select>
		<input type="number" id="input1" name="q" value="0"> 개

		<input type="number" id="input2" name="p" value="0"> 원
		<br>
		
		<input type="submit" value="담기">
	</form>
</div>
<hr>

<div class="container">
<h5>장바구니</h5>
<ul>
<%
for (Map.Entry<String, Integer> item : cart.entrySet()) {
	if (item.getValue() !=0) {
		
		out.print("<li>");
		out.print(item.getKey() + ":" + item.getValue() + "개");
		out.print("</li>");
		
	}
}
%>
</ul>

</div>
</body>
</html>