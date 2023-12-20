<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Notes Added</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa; /* Set your preferred background color */
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .success-message {
            text-align: center;
            margin-bottom: 20px;
        }
        
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="success-message">Notes Added Successfully</h1>
                <div class="text-center"> <!-- Center the button -->
                    <button class="btn btn-primary" onclick="window.location.href='displaynotes.jsp'">Show My Notes</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
