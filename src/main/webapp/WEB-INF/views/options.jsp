<!--
Created by IntelliJ IDEA.
User: SergejK
Date: 28-Jul-19
Time: 09:06
To change this template use File | Settings | File Templates.
-->
<!--Vsplivajusee menu-->

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

  <style>
    body {
      background: url("https://good-surf.ru/forum/urok/css/fon/images/big.jpg") no-repeat;
      background-size: 100%;

    }
    .navbar {
      overflow: hidden;
      background-color: #333;
      font-family: Arial, Helvetica, sans-serif;
    }

    .navbar a {
      float: left;
      font-size: 16px;
      color: white;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
    }

    .dropdown {
      float: left;
      overflow: hidden;
    }

    .dropdown .dropbtn {
      cursor: pointer;
      font-size: 16px;
      border: none;
      outline: none;
      color: white;
      padding: 14px 16px;
      background-color: inherit;
      font-family: inherit;
      margin: 0;
    }

    .navbar a:hover, .dropdown:hover .dropbtn, .dropbtn:focus {
      background-color: red;
    }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
      z-index: 1;
    }

    .dropdown-content a {
      float: none;
      color: black;
      padding: 12px 16px;
      text-decoration: none;
      display: block;
      text-align: left;
    }

    .dropdown-content a:hover {
      background-color: #ddd;
    }

    .show {
      display: block;
    }

    td, th {
      border: 1px solid #dddddd;
      text-align: left;
      padding: 8px;
    }

    .remove_button {
      padding: 10px 15px;
      font-size: 24px;
      text-align: center;
      cursor: pointer;
      outline: none;
      color: #e60000;
      background-color: #00008B;
      border: none;
      border-radius: 15px;
      box-shadow: 0 9px #999;
    }

    .add_button {

      padding: 15px 25px;
      font-size: 24px;
      text-align: center;
      cursor: pointer;
      outline: none;
      color: #fff;
      background-color: #00008B;
      border: none;
      border-radius: 15px;
      box-shadow: 0 9px #999;
    }


    textarea {

      position: absolute;
      top: 98px;
      right: 450px;


    }

    table {
      position: absolute;
      top: 200px;
      left: 210px;
    }


  </style>

  <title>Title</title>
</head>
<body>


<a><img src="https://www.sherloglatvia.com/wp-content/uploads/2016/06/logo.png" alt="sherlog" width="90"
    height="50"/></a>


<br/>

<div>
  <table style="float: top" border="7">
    <tr>
      <th>Date</th>
      <th>Manager</th>
      <th>Car</th>
      <th>Client</th>
      <th>Info</th>
      <th>Sistem</th>
      <th>Work</th>
      <th>Rezultats</th>
      <th>Action</th>
    </tr>

    <c:forEach var="jobForm" items="${optionsList}">

      <tr>
        <td width="75">${jobForm.workdate}</td>
        <td width="50">${jobForm.manager}</td>
        <td width="50">${jobForm.car}</td>
        <td width="50">${jobForm.client}</td>
        <td width="50">${jobForm.info}</td>
        <td width="50">${jobForm.sistem}</td>
        <td width="50">${jobForm.work}</td>
        <td width="50">${jobForm.action} </td>
        <td width="50"><a style="background: tomato" href="/options/delete${jobForm.id}">Delete</a><br/><br/><a
            style="background: #3e8e41 " href="/options/edit${jobForm.id}">Edit</a></td>

      </tr>
    </c:forEach>
  </table>

</div>
<br/>
<div style="height: 200px; width: 100px; border: 3px dashed #e03c32">
  <p>
    <strong><a href="/">Years list</a></strong> <br/>
    <strong><a href="/statistics">Statistics</a></strong><br/>
    <strong><a href="/addnew">Add New</a></strong>

  </p>
</div>

</body>
</html>
