<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Auto Counsel</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <script src="/JS/login.js"></script>

    <style>
        /* Dashboard-themed styling */
        body {
            font-family: 'Poppins', sans-serif;
            /* background: linear-gradient(135deg, #2A2D3E, #1E1F2F); Updated to match dashboard */
            color: #fff;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: row;
            background: #686868c7;
            /* Matching dashboard */
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
            width: 800px;
        }

        .info-section {
            flex: 1;
            padding: 20px;
            text-align: left;
            color: #f99c32;
            /* Gold accent */
        }

        .info-section h3 {
            font-size: 22px;
            margin-bottom: 15px;
        }

        .info-section p {
            font-size: 14px;
            color: white;
            line-height: 1.5;
        }

        .login-card {
            flex: 1;
            background: rgb(99 99 99);
            backdrop-filter: blur(10px);
            padding: 2rem;
            border-radius: 15px;
            text-align: center;
        }

        .login-card h2 {
            font-size: 24px;
            margin-bottom: 1rem;
            color: #fff;
        }

        .form-group {
            margin-bottom: 1rem;
            text-align: left;
        }

        .form-group label {
            font-size: 14px;
            color: #eee;
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            font-size: 14px;
            border: none;
            border-radius: 8px;
            /* background: rgba(255, 255, 255, 0.2); */
            /* color: #fff; */
            outline: none;
        }

        .btn {
            background-color: #f99c32;
            color: white;

            &:not(.disable):hover {
                background-color: #f99c32;
            }
        }

        .text-center {
            margin-top: 1rem;
        }

        .text-center a {
            color: #FFD700;
            text-decoration: none;
        }

        .text-center a:hover {
            text-decoration: underline;
        }

        @media (max-width: 768px) {
            .container {
                flex-direction: column;
                width: 90%;
            }

            .info-section {
                text-align: center;
            }
        }
    </style>
</head>

<body>

    <div class="container">
        <!-- Static Information Section -->
        <div class="info-section">
            <h3>Welcome to Auto Counsel</h3>
            <p>Your AI-powered legal advisor platform. Simplifying legal processes for businesses and individuals with
                automation, compliance, and expert insights.</p>
        </div>

        <!-- Login Form -->
        <div class="login-card">
            <h2>Login to Your Dashboard</h2>
            <form id="loginForm" class="border border-light rounded p-4">
                <div class="form-group">
                    <!-- <label for="username">Username</label> -->
                    <input type="text" id="username" name="userName" class="form-control"
                        placeholder="Enter your username" required>
                </div>
                <div class="form-group">
                    <!-- <label for="password">Password</label> -->
                    <input type="password" id="password" name="password" class="form-control"
                        placeholder="Enter your password" required>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn w-100 border border-light">Login</button>
                </div>
            </form>
            <div class="text-center">
                <p>Don't have an account? <a href="/auth/register">Sign up</a></p>
            </div>
        </div>
    </div>

</body>

</html>