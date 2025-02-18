<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        /* Dashboard-Themed Colors */
        :root {
            --primary-color: #3A3F51;  /* Dark Gray */
            --secondary-color: #2C2F3F; /* Slightly Lighter Gray */
            --accent-color: #FF8C00;  /* Orange */
            --text-light: #FFFFFF; /* White */
            --text-muted: #CFCFCF; /* Muted Light */
            --border-radius: 12px;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: var(--primary-color);
            color: var(--text-light);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            max-width: 700px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: var(--border-radius);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.95);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        .alert {
            background: var(--secondary-color);
            color: var(--text-light);
            font-size: 1.2rem;
            font-weight: bold;
            border: none;
            border-radius: var(--border-radius);
            padding: 20px;
            animation: slideIn 0.8s ease-out;
        }

        @keyframes slideIn {
            from {
                transform: translateY(-20px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .btn-custom {
            display: block;
            width: 100%;
            padding: 12px 20px;
            font-size: 1rem;
            font-weight: bold;
            border-radius: var(--border-radius);
            text-align: center;
            text-decoration: none;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            margin-top: 10px;
            color: white;
            background-color: #FF7E00; /* Orange accent */
            border: none;
            box-shadow: 0 4px 10px rgba(255, 126, 0, 0.4);
        }

        .btn-custom:hover {
            background: #E66900; /* Darker orange */
            box-shadow: 0 8px 20px rgba(255, 126, 0, 0.6);
        }

        .btn-custom:active {
            transform: scale(1);
            box-shadow: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="alert alert-success">
            <strong>${message}</strong>
            <p><strong>Car Model:</strong> ${carModel}</p>
            <p><strong>Car Name:</strong> ${carName}</p>
            <p><strong>Service Type:</strong> ${serviceType}</p>
            <p><strong>Appointment Date:</strong> 
                <fmt:formatDate value="${appointmentDate}" pattern="yyyy-MM-dd" var="formattedDate" />
                ${appointmentDate}
            </p>
            <p><strong>Garage:</strong> ${garage}</p>
        </div>

        <a href="/carsService/book-service" class="btn btn-custom">Book Another Service</a>
        <a href="/auth/dashboard" class="btn btn-custom">Back to Dashboard</a>
    </div>
</body>
</html>