<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<style>
    .custom-form {
                background-color: #686868c7;
                color: white;
            }       

            .custom-height {
                min-height: 50px;
            }

            /* .button {
                display: flex;
                justify-content: center;
            } */

            .submit-btn {
                background-color: #f99c32;
                color: white;
                &:not(.disable):hover {
                    background-color: #f99c32;
                    color: white;
                }
            }
            .login-url {
                color: #f99c32;
            }
</style>

<body>
    <%-- <jsp:include page="../jsp/index.jsp"></jsp:include>
    <div class="registration-container">
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
    </div> --%>
<div class="container">
    <div class="row">
        <div class="col-10 col-md-8 offset-1 offset-md-2 mt-5 rounded custom-form pb-5 pt-5 shadow-lg">
            <h2 class="text-center mb-4">Register</h2>
            <form class="border border-light rounded p-4" action="/auth/register" method="POST">
                <div class="mb-3">
                    <!-- <label for="firstName">First Name</label> -->
                    <input class="form-control custom-height" type="text" name="firstName" id="firstName" placeholder="Enter the First Name" required />
                </div>
                <div class="mb-3">
                    <!-- <label for="lastName"> Last Name </label> -->
                    <input class="form-control custom-height" type="text" id="lastName" name="lastName" placeholder="Enter your last name" required />
                </div>
                <div class="mb-3">
                    <!-- <label for="userName">Username</label> -->
                    <input class="form-control custom-height" type="text" id="registerUserName" name="userName" placeholder="Enter a username" required />
                </div>
                <div class="mb-3">
                    <!-- <label for="email">Email</label> -->
                    <input class="form-control custom-height" type="email" id="email" name="email" placeholder="Enter your email" required />
                </div>
                <div class="mb-3">
                    <!-- <label for="password">Password</label> -->
                    <input class="form-control custom-height" type="password" id="registerPassword" name="password" placeholder="Enter your password"
                        required />
                </div>
                <div class="mb-3">
                    <!-- <label for="confirmPassword">Confirm Password</label> -->
                    <input class="form-control custom-height" type="password" id="confirmPassword" name="confirmPassword"
                        placeholder="Confirm your password" required />
                </div>
                <p class="error" style="display: none;">Error message here</p>
                <button type="submit" class="btn submit-btn w-100 border border-light">Register</button>
                <br /><br />
                <p>
                    Already signed up? <a href="/login" class="login-url">Login</a>
                </p>
            </form>
        </div>
    </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</body>

</html>