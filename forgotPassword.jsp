<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="forgotpasswordaction.jsp" method="post">
    <input type="email" name="email" placeholder="Enter your Email" required>
     <input type="number" name="Mobilenumber" placeholder="Enter your Mobile number" required>
     <select name="Securityquestion" required>
     <option value="what is your first school?">what is your first school?</option>
     <option value="what is your pet name?">what is your pet name?</option>
     <option value="what is birth place?">what is your birth place?</option>
     </select>
     <input type="text" name="Answer" placeholder="Enter your Answer"> 
          <input type="password" name="Newpassword" placeholder="Enter your new password"> 
               <input type="submit" value="Save"> 
    </form> 
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%
  String msg=request.getParameter("msg");
  if("done".equals(msg))
  {
  %>
<h1>Password Changed Successfully!</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

    <h2>Online Mobile Shopping</h2>
    <p>The Online Mobile Shopping application that allows the users to shop mobiles through online without going to any shops to buy them.</p>
  </div>
</div>
</body>
</html>