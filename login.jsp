
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="loginaction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter email" required>
     <input type="password" name="password" placeholder="Enter password" required>
     <input type="submit" value="Login">
     </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
  String msg=request.getParameter("msg");
  if("not exist".equals(msg))
  {
  %>
  <h1>Incorrect Username or Password</h1>
  <%} %>
  <%if("invalid".equals(msg))
  {%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

    <h2>Online Mobile Shopping</h2>
    <p>The Online Mobile Shopping application that allows the users to shop mobiles through online without going to any shops to buy them.</p>
  </div>
</div>

</body>
</html>