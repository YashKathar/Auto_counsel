<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        .registration-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: #fff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .form-title {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
        }

        .btn-primary {
            background-color: #0056b3;
            border: none;
        }

        .btn-primary:hover {
            background-color: #004494;
        } */

        body{
    margin: 0;
    padding: 0;
    font-family: Arial, Helvetica, sans-serif;
    background-color: #f4f4f9;
}

.register-container{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-color: #f4f4f9;
    margin-top: 20px;
    margin-bottom: 40px;
}

.register-form{
    background-color: #ffffff;
    padding: 30px 40px;
    border-radius: 8px;
    box-shadow: 0 4px 10px  rgba(0, 0, 0, 0.2);
    max-width: 400px;
    width : 100%
}

.register-form h2{
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

.form-group {
    margin-bottom: 15px;
}

.form-group label{
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
    color: #333;
}

.form-group input{
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 14px;
    box-sizing: border-box;
}

/* #userName, #password{
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 14px;
    box-sizing: border-box;
    margin-left: 5px;
   
}

#userName, #password:focus{
    outline: none;
    border-color: #007bff;
} */

.form-group input:focus {
    outline: none;
    border-color: #007bff;
}

.error {
    color: red;
    font-size: 12px;
    margin-top: -10px;
    margin-bottom: 10px;
}

.submit-btn{
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
}

.submit-btn:disabled {
    background-color: #999;
    cursor: not-allowed;
}


.submit-btn:hover:enabled {
    background-color: #0056b3;
  }
    </style>
</head>

<body>
<jsp:include page="../jsp/index.jsp"></jsp:include>
    <!-- <div class="registration-container">
        <h2 class="form-title">User Registration</h2>
        <form action="/auth/register" method="post">
            <div class="mb-3">
                <label for="firstName" class="form-label">First Name</label>
                <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter your first name" required>
            </div>

            <div class="mb-3">
                <label for="lastName" class="form-label">Last Name</label>
                <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter your last name" required>
            </div>

            <div class="mb-3">
                <label for="userName" class="form-label">Username</label>
                <input type="text" class="form-control" id="userName" name="userName" placeholder="Choose a username" required>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
            </div>

            <div class="mb-3">
                <label for="usercol" class="form-label">Additional Info</label>
                <input type="text" class="form-control" id="usercol" name="usercol" placeholder="Enter additional info">
            </div>

            <button type="submit" class="btn btn-primary w-100">Register</button>
        </form>
    </div> -->

    <div>
        <div class="register-container">
            <form class="register-form" action="/auth/register" method="POST">
                <h2>Register</h2>
                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <input 
                        type="text" 
                        name="firstName" 
                        id="firstName"
                        placeholder="Enter the First Name"
                        required
                    />
                </div>
                <div class="form-group">
                    <label for="lastName"> Last Name </label>
                    <input
                        type="text"
                        id="lastName"
                        name="lastName"
                        placeholder="Enter your last name"
                        required
                    />
                </div>
                <div class="form-group">
                    <label for="userName">Username</label>
                    <input
                        type="text"
                        id="registerUserName"
                        name="userName"
                        placeholder="Enter a username"
                        required
                    />
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input
                        type="email"
                        id="email"
                        name="email"
                        placeholder="Enter your email"
                        required
                    />
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input
                        type="password"
                        id="registerPassword"
                        name="password"
                        placeholder="Enter your password"
                        required
                    />
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <input
                        type="password"
                        id="confirmPassword"
                        name="confirmPassword"
                        placeholder="Confirm your password"
                        required
                    />
                </div>
                <p class="error" style="display: none;">Error message here</p>
                <button type="submit" class="submit-btn">Register</button>
                <br /><br />
                <p>
                    Already signed up? <a href="/login">Login</a>
                </p>
            </form>
        </div>
    </div>
    
</body>

</html>
