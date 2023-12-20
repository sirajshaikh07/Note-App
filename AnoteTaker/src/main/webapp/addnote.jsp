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
      background-color:#FFF78A; /* Light gray background */
      font-family: Arial, sans-serif; /* Use a common font */
    }
    .navbar {
      background-color: #343a40; /* Dark background for navbar */
    }
    .navbar-brand {
      font-weight: bold;
    }
    .form-container {
      max-width: 600px;
      margin: auto;
      padding: 20px;
      border-radius: 8px;
      margin-top: 20px;
      background-color: #FFECD6; /* White background for form */
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add subtle shadow */
    }
    /* Input and button styles */
    input[type="text"],
    textarea,
    button[type="submit"] {
      margin-bottom: 15px;
      transition: all 0.3s ease-in-out; /* Smooth transition */
      border: 1px solid #ced4da; /* Light gray border */
      border-radius: 4px;
      padding: 8px;
    }
    button[type="submit"] {
      background-color: #007bff; /* Blue submit button */
      border: none;
      color: #fff;
      padding: 8px 20px;
      border-radius: 4px;
      cursor: pointer;
      transition: all 0.3s ease-in-out; /* Smooth transition */
    }
    button[type="submit"]:hover {
      background-color: #0056b3; /* Darker blue on hover */
    }
    /* Animation for the image */
    .card-img-top {
      animation: rotateImage 5s infinite linear; /* Rotate image infinitely */
    }
    @keyframes rotateImage {
      from {
        transform: rotate(0deg); /* Start from 0 degrees */
      }
      to {
        transform: rotate(360deg); /* Rotate 360 degrees */
      }
    }
    /* Media query for responsiveness */
    @media screen and (max-width: 768px) {
      .form-container {
        width: 90%; /* Adjust width for smaller screens */
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
            <a class="nav-link" href="#">Show Notes</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Note Form -->
  <div class="container form-container" id="formContainer">
    <h2 class="mb-4 text-center"><b>MY-NOTES</b></h2>
    <div class="card-header text-center">
      <img src="img/notes.png" style="width: 100px;" class="card-img-top m-4" alt="Card Image">
    </div>
    <form action="AddNote" method="post" id="noteForm">
      <div class="mb-3">
        <label for="Title" class="form-label">Title</label>
        <input type="text" class="form-control" name="title" id="exampleFormControlInput1" placeholder="Enter a note">
      </div>
      <div class="mb-3">
        <label for="content" class="form-label">Description</label>
        <textarea name="content" class="form-control" id="exampleFormControlTextarea1" rows="5" placeholder="Enter description"></textarea>
      </div>
      <div class="text-center">
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </form>
  </div>

  <!-- Bootstrap JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
