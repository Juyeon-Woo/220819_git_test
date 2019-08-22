<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="board.BoardDataBean" %>
<%@ page import="board.BoardDBBean" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="article" class="board.BoardDataBean" >
<jsp:setProperty name="article" property="*"/>
</jsp:useBean>

<%
article.setReg_date(new Timestamp(System.currentTimeMillis()));
article.setIp(request.getRemoteAddr());

BoardDBBean dbPro = BoardDBBean.getInstance();
dbPro.insertArticle(article);

response.sendRedirect("list.jsp");

%>