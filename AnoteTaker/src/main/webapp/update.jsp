<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.entities.*" %>
<%@ page import="com.helper.*" %>
<%@ page import="com.servlets.*" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Notes Maker</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <style>
    /* Additional CSS styles */
    body {
      padding-top: 60px; /* To accommodate the fixed navbar */
    }
    .form-container {
      max-width: 600px;
      margin: auto;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 8px;
      margin-top: 20px;
    }
  </style>
</head>
<body>

<%

 int n=Integer.parseInt(request.getParameter("id"));
Session s=SessionFactoryProvider.getSessionFactory().openSession();
Notes note=(Notes)s.get(Notes.class, n);



%>

  <!-- Note Form -->
  <div class="container form-container">
    <h2 class="mb-4">Create a Note</h2>
    <form action="update" method="post">
    <div class="mb-3">
        <label for="id" hidden="" class="form-label">ID</label>
        <input type="text" hidden="" value="<%=note.getNoteId() %>" class="form-control" name="id" id="exampleFormControlInput1" placeholder="Enter a note">
      </div>
      <div class="mb-3">
        <label for="Title" class="form-label">Title</label>
        <input type="text" value="<%=note.getNoteTitle()  %>"class="form-control" name="title" id="exampleFormControlInput1" placeholder="Enter a note">
      </div>
      <div class="mb-3">
        <label for="content" class="form-label">Description</label>
        <textarea  name="content"  class="form-control" id="exampleFormControlTextarea1" rows="5" placeholder="Enter description"><%=note.getNoteContent() %></textarea>
      </div>
      <button type="submit" class="btn btn-primary">Update</button>
    </form>
  </div>

  <!-- Bootstrap JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
