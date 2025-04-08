<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>JSP</title>
</head>
<body>
    <p>Hello JSP !!</p>
    <% if (request.getParameter("name") != null) { %>
        <p><%= request.getParameter("name")%>님 안녕하세요!</p>
    <% } else { %>
        <jsp:forward page="name.jsp"/>
    <% } %>
<%--    <p><%= request.getAttribute("data") %></p>--%>
    <p>${requestScope.get("data")}</p>
    <p>${requestScope.get("data").get(0)}</p>
    <p>${requestScope.get("data").get(0).name}</p>
    <p>${requestScope.get("data").get(0).name.startsWith("고") ? "강아지" : "앵무새"}</p>
    <%--  request에서 받아올 수 있음  --%>
    <c:forEach var="item" items="${data}">
        <p>${item}</p>
    </c:forEach>
    <section>
        <form method="POST" style="display: flex; flex-direction: column; gap: 10px; padding: 10px; max-width: 240px; margin: auto;">
            <label>이름: <input type="text" name="name"></label>
            <label>주소: <input type="text" name="address"></label>
            <label>가격: <input type="number" name="price"></label>
            <button>등록</button>
        </form>
    </section>
    <jsp:include page="footer.jsp"/>
</body>
</html>
