<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Session サンプル</title>
</head>
<body>
	<h1>会員登録画面</h1>
	<hr/>
	<div>${loginModel.userId }でログイン中</div>
	<hr/>
	<form:form>
		<table>
			<tr>
				<td>会員氏名</td>
				<td><c:out value="${memberModel.name }"/></td>
			</tr>
			<tr>
				<td>性別</td>
				<td>
					<c:if test="${memberModel.gender == 'man' }">男</c:if>
					<c:if test="${memberModel.gender == 'woman' }">女</c:if>
				</td>
			</tr>
			<tr>
				<td>メールアドレス</td>
				<td><c:out value="${memberModel.mail }"/></td>
			</tr>
		</table>
		<p>${message }</p>
		<table>
			<tr>
				<td><input type="submit" name="back" value="戻る"/></td>
				<td><input type="submit" name="forward" value="登録"/></td>
			</tr>
		</table>
	</form:form>
	<hr/>
	<p>
		セッション情報確認<br/>
		LoginModel セッション => ${sessionScope.loginModel }
		<br/>
		MemberModel セッション => ${sessionScope.memberModel }
	</p>
</body>
</html>