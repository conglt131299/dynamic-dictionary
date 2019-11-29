﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dictionary.aspx.cs" Inherits="FrontEnd.Dictionary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dynamic Dictionary</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
        }

        #container {
            width: 80%;
            margin: auto;
        }

        h1 {
            margin-left: 20px;
            margin-bottom: 0;
        }

        span {
            color: blue;
        }

        #head-description {
            margin-top: 5px;
            margin-left: 35px;
        }

        #searchForm {
            margin: 50px auto;
            position: relative;
        }

        input[type=text] {
            width: 100%;
            height: 50px;
            font-size: 30px;
            box-sizing: border-box;
            padding: 0 250px 0 30px;
            border: 1px solid gray;
            border-radius: 1em 1em 1em 1em;
        }

        input[type=text]:focus {
            outline: none;
        }

        #selection {
            border-left: 1px solid gray;
            position: absolute;
            right: 30px;
            top: 10px;
            box-sizing: border-box;
            padding-left: 10px;
            height: 30px;
        }

        #selection > select {
            border: none;
            font-size: 18px;
            color: gray;
            position: relative;
            top: -6px;
        }

        #selection > select:focus, button:focus {
            outline: none;
        }

        #selection > button {
            background-color: white;
            border: none;
            font-size: 30px;
            color: gray;
            cursor: pointer;
        }

        #kindOfDictionary {
            color: red;
        }

        #volumnUp {
            position: absolute;
            top: 250px;
            right: 180px;
            color: gray;
        }

        .header {
            color: gray;
        }

        .word-class {
            color: blue;
        }

        .meaning {
            color: blue;
        }

        .example {
            color: green;
        }

        .explain {
            color: gray;
        }

        .other {

        }

        <%--style header--%>
        .header {
            display:flex;
            flex-direction:row;
        }
        .header-left {
            width: 50%;
        }
        .header-right{
            width: 50%;
            padding-top : 21.44px;
      
        }
        .header-right * {
            float: right;
            height: 60px;
        }

        #btnUserChange {
            display: inline-block;
            border: none;
            padding: 0.5rem 1rem;
            margin: 0;
            text-decoration: none;
            background: #0069ed;
            color: #ffffff;
            font-family: sans-serif;
            font-size: 1.5rem;
            font-weight: 400;
            cursor: pointer;
            text-align: center;
            transition: background 250ms ease-in-out, 
                        transform 150ms ease;
            border-radius:10px;
        }

        #btnUserChange:hover,
        #btnUserChange:focus {
            background: #0053ba;
        }

        #btnUserChange:focus {
            outline: 1px solid #fff;
            outline-offset: -4px;
        }

        #btnUserChange:active {
            transform: scale(0.99);
        }

        #lblUsername {
            margin-right: 50px;
            font-size: 30px;
            line-height: 60px;
        }

        .div-note {
            display: flex;
            flex-direction: row;
            margin-bottom: 10px;
        }
        .div-note-btn {
            width: 35px;
        }
        .note-content {
            border : 1px solid gray;
            border-radius: 10px;
            line-height: 20px;
            padding: 5px;
            margin-left: 10px;
            width: 100%;
        }
        #txtNote {
            outline: none;
            height: 80px;
            font-family: sans-serif;
            font-size: 16px;
            resize: vertical;
        }

        .header-link {
            text-decoration: none;
            margin-right: 50px;
            font-size: 30px;
            line-height: 60px;
            
        }
    </style>
</head>
<body>
    <div id="container">
        <div class="header">
            <div class="header-left">
                <h1><span>DYNAMIC</span> DICTIONARY</h1>
                <h3 id="head-description">Search in own dictionary</h3>
            </div>
            <div class="header-right">
                <button runat="server" id="btnUserChange" onserverclick="ChangeUser"></button>
                <a class="header-link" runat="server" id="lblUsername"></a>
            </div>
        </div>
        

        <form id="searchForm" runat="server">
            <input type="text" name="keyWord" id="keyword" runat="server" placeholder="Tìm kiếm từ khóa..."/>
            <div id="selection">
                <select id="kindOfDic" runat="server" onchange="changeDictionary()">
                    <option value="1">Anh - Việt</option>
                    <option value="2">Việt - Anh</option>
                </select>
                <%--<asp:Button ID="btSearch" class="searchButton" runat="server" OnClick="Search" Text="Search" />--%>
                <button class="searchButton" onserverclick="Search" runat="server"><i class="fa fa-search"></i></button>
            </div>
        </form>

        <div>
            <h3 id="kindOfDictionary">Từ điển Anh - Việt</h3>
            <span id="volumnUp"><i class="fa fa-volume-up"></i></span>
            <hr />
            <div class="div-note" id="divNote" runat="server">
                <a id="btnNote" runat="server" href="Login.aspx">
                    <span style="font-size: 30px; color: Dodgerblue;">
                        <i class="fa fa-edit"></i>
                    </span>
                </a>
                
                <div class="note-content" id="lblNote" runat="server"></div>
            </div>
            <div id="demo" runat="server"></div>
        </div>
        <%--<div id="demo" runat="server"></div>--%>
    </div>
    <script>
        window.onload = changeDictionary();

        function changeDictionary() {
            var val = document.getElementById('kindOfDic').value;
            if (val === "1") {
                document.getElementById('kindOfDictionary').innerText = "Từ điển Anh - Việt";
            } else {
                document.getElementById('kindOfDictionary').innerText = "Từ điển Việt - Anh";
            }
        }
    </script>
</body>
</html>