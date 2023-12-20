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
    }
    .form-container {
      max-width: 600px;
      margin: auto;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 8px;
      margin-top: 20px;
    }
    .note-header {
      display: flex;
      justify-content: center; /* Center the content horizontally */
      align-items: center;
      flex-direction: column; /* Align items in a column */
      text-align: center; /* Center-align the text */
      margin-bottom: 20px;
    }
    .note-title {
      font-size: 24px;
      color: #333;
      font-weight: bold;
    }
    .first {
      color: maroon;
      animation: animateText 1s ease-in-out infinite;
    }
    .sec {
      color: orange;
      animation: animateText 1s ease-in-out infinite;
      animation-delay: 0.5s;
    }
    .third {
      color: red;
      animation: animateText 1s ease-in-out infinite;
      animation-delay: 2s;
    }
    @keyframes animateText {
      from {
        opacity: 0;
        transform: translateY(-20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
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
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" href="addnote.jsp">Add Note</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="displaynotes.jsp">Show Notes</a>
          </li>
        </ul>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>
  
  <div class="container">
    <div class="note-header">
      <div>
        <img alt="" src="img/sticky-notes.png">
      </div>
      <div class="note-title">
        <h1 class="note-text"><span class="first">The</span> <span class="sec">Noty Noty</span> <span class="third">Note Maker</span> </h1>
      </div>
    </div>
  </div>

  <!-- Note Form -->
  
  <!-- Bootstrap JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
