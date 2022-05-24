<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<h2>회원 가입</h2>
<div class="">
	<form action="" method="">
		<fieldset>
			<table>
				<tr>
					<th><label>아이디 : </label></th>
					<td><input class="input is-info" type="text" name="id" placeholder="아이디 입력" autofocus="autofocus" required></td>
				</tr>
				<tr>
					<th><label>비밀번호 : </label></th>
					<td><input class="input is-info" type="password" placeholder="비밀번호 입력" name="pw1" required></td>
				</tr>
				<tr>
					<th><label>비밀번호 확인 : </label></th>
					<td><input class="input is-info" type="password" name="pw2" required></td>
				</tr>
				<tr>
					<th><label>이메일 : </label></th>
					<td><input class="input is-info" type="email" name="email"></td>
				</tr>
				<tr>
					<th><label>전화번호 : </label></th>
					<td><input class="input is-info" type="tel" name="tel"></td>
				</tr>
				<tr>
					<th><label>주소 : </label></th>
					<td><input class="input is-info" type="text" name="addr"></td>
				</tr>
				<tr>
					<th><label>가입일 : </label></th>
					<td><input type="date" name="regdate"></td>
				</tr>
				<tr>
					<th><label>생년월일 : </label></th>
					<td><input type="date" name="birth"></td>
				</tr>
			</table>
		</fieldset>
		<input type="submit" value="가입"> &nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" value="취소">
	</form>
</div>
</body>
</html>