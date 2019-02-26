<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="loginPage.css">
</head>
<body>

    <div id="login">
      <form  action="login" method="post"  name='form-login'>
        <span class="fontawesome-user"></span>
          <input type="text" name=user placeholder="Username">
       
        <span class="fontawesome-lock"></span>
          <input type="password" name=pass placeholder="Password">
        
        <input type="submit" value="Login">

</form>
</div>
</body>
</html>