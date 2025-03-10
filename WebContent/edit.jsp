<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>つぶやき編集画面</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="main-contents">
	<div class="header">
		<c:if test="${ not empty loginUser }">
			<a href="./">ホーム</a>
			<a href="setting">設定</a>
			<a href="logout">ログアウト</a>
		</c:if>
	</div>
	<c:if test="${ not empty errorMessages }">
		<div class="errorMessages">
			<ul>
				<c:forEach items="${errorMessages}" var="errorMessage">
					<li><c:out value="${errorMessage}" />
				</c:forEach>
			</ul>
		</div>
	</c:if>

		<form action="edit" method="post">
			つぶやき<br />
			<textarea name="text" cols="100" rows="5" class="tweet-box"><c:out value="${message.text}" />
			</textarea>
			<br />
			<input type="submit" value="更新">
			<input name="message_id" value="${message.id}" type="hidden">
			<br /><a href="./">戻る</a>
		</form>

		<div class="copyright">Copyright(c)Dohee Lee</div>
</div>
</body>
</html>