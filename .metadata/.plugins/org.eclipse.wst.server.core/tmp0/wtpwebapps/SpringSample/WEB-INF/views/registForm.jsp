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
	<div>${loginModel.userId} でログイン中</div>
	<hr/>
	<form:form modelAttribute="memberModel">
		<table>
			<tr>
				<td>会員氏名</td>
				<td><form:input path="name" value="${memberModel.name }"/></td>
				<td><form:errors path="name" element="div"/></td>
			</tr>
			<tr>
				<td>性別</td>
				<td>
					<form:radiobutton path="gender" label="男"value="man"/>
					<form:radiobutton path="gender" label="女"value="woman"/>
				</td>
			</tr>
			<tr>
				<td>メールアドレス</td>
				<td><form:input path="mail" value="${memberModel.mail }"/></td>
				<td><form:errors path="mail" element="div"/></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="確認"/></td>
			</tr>
		</table>
	</form:form>
	<hr/>
	<p>
		セッション情報確認☆<br/>
		LoginModel セッション =>${sessionScope.loginModel }
		<br/>
		MemberModel セッション => ${sessionScope.memberModel }
	</p>
</body>
</html>