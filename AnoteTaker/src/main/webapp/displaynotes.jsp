
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.entities.*" %>
<%@ page import="com.helper.*" %>
<%@ page import="com.servlets.*" %>
<!DOCTYPE html>
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
      background-color: #f8f9fa; /* Set your preferred background color */
    }
    .card {
      margin-top: 30px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }
    .card-header {
      padding: 0;
      position: relative;
      overflow: hidden;
    }
    .card-header img {
      width: 100%;
      height: auto;
    }
    .card-body {
      padding: 20px;
    }
    .date-field {
      font-size: 14px;
      color: #6c757d;
      margin-bottom: 10px;
    }
  </style>
</head>
<body>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="index.jsp">Notes Maker</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </nav>

  <% 
    Session s = SessionFactoryProvider.getSessionFactory().openSession();
    String query = "from Notes";
    Query q = s.createQuery(query);
    List<Notes> list = q.list();

    for (Notes n : list) {
       // Replace with actual method/field name for image path in your Notes entity
  %>

  <!-- Card -->
  <div class="container">
    <div class="row">
      <div class="col-md-8 offset-md-2 col-lg-6 offset-lg-3">
        <div class="card">
          <!-- Card header with image -->
          <div class="card-header text-center">
            <img src="img/notes.png" style="width: 80px;" class="card-img-top m-4" alt="Card Image">
          </div>
          <div class="card-body">
            <h5 class="card-title"><%= n.getNoteTitle() %></h5>
            <h6 class="card-subtitle mb-2 text-body-secondary date-field">Date: <%= n.getNoteDate() %></h6>
            <p class="card-text"><%= n.getNoteContent() %></p>
            <div class="text-center">
              <a href="update.jsp?id=<%= n.getNoteId() %>" class="btn btn-primary">Update</a>
              <a href="deleteNote?id=<%= n.getNoteId() %>" class="btn btn-danger">Delete</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <% } %>

  <!-- Bootstrap JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
