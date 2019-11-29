﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FrontEnd.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Login Form</title>
	<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
		    <div class="login-box">
			    <div class="box-header">
				    <h2>Login form</h2>
			    </div>
			    <label for="username">Username</label>
			    <br/>
			    <input type="text" id="txtUsername" runat="server" required=""/>
			    <br/>
			    <label for="password">Password</label>
			    <br/>
			    <input type="password" runat="server" id="txtPassword" required=""/>
                <p class="warning" runat="server" id="pWarning"></p>
			    <br/>
                <a href="Signup.aspx"><p class="small">Signup</p></a>
                <br/>
                <br/>
			    <button runat="server" onserverclick="LoginSubmit">Sign In</button>
		    </div>
	    </div>
    </form>
</body>
</html>