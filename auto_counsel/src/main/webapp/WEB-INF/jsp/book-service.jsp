<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Car Service</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <style>
        body {
            background: linear-gradient(to right, #141e30, #243b55);
            font-family: 'Poppins', sans-serif;
            color: #fff;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            max-width: 500px;
        }

        .card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
            padding: 25px;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                transform: translateY(20px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .card-header {
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            color: white;
            text-align: center;
            font-size: 1.7rem;
            padding: 20px;
            border-radius: 12px 12px 0 0;
            font-weight: bold;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .card-header i {
            margin-right: 10px;
            font-size: 2rem;
        }

        .form-label {
            font-weight: bold;
            color: #fff;
        }

        .form-control {
            border-radius: 10px;
            font-size: 1rem;
            padding: 12px;
            border: 1px solid #ddd;
            background-color: rgba(255, 255, 255, 0.15);
            color: #fff;
            transition: all 0.3s ease;
        }

        .form-control::placeholder {
            color: #ccc;
        }

        .form-control:focus {
            border-color: #00a8ff;
            box-shadow: 0 0 8px rgba(0, 168, 255, 0.5);
            background-color: rgba(255, 255, 255, 0.3);
        }

        .btn-primary {
            background: linear-gradient(135deg, #ff512f, #dd2476);
            border: none;
            padding: 14px;
            font-size: 1.2rem;
            font-weight: bold;
            border-radius: 10px;
            transition: all 0.3s ease-in-out;
            color: white;
        }

        .btn-primary:hover {
            background: linear-gradient(135deg, #dd2476, #ff512f);
            transform: scale(1.05);
        }

    </style>

    <!-- FontAwesome for Icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body>

    <div class="container">
        <div class="card">
            <div class="card-header">
                <i class="fas fa-car"></i> Book a Car Service
            </div>

            <div class="card-body">
                <form id="carServiceForm" action="/carsService/book" method="post">
                    
                    <!-- Car Model -->
                    <div class="mb-3">
                        <label for="carModel" class="form-label">Car Model</label>
                        <input type="text" name="carModel" class="form-control" id="carModel" placeholder="Enter car model" required aria-label="Car Model">
                    </div>

                    <!-- Car Name -->
                    <div class="mb-3">
                        <label for="carName" class="form-label">Car Name</label>
                        <input type="text" name="carName" class="form-control" id="carName" placeholder="Enter car name" required aria-label="Car Name">
                    </div>

                    <!-- Service Type -->
                    <div class="mb-3">
                        <label for="serviceType" class="form-label">Service Type</label>
                        <select name="serviceType" class="form-control" id="serviceType" required aria-label="Service Type">
                            <option value="">Select Service Type</option>
                            <option value="Oil Change">Oil Change</option>
                            <option value="Engine Checkup">Engine Checkup</option>
                            <option value="Brake Service">Brake Service</option>
                            <option value="Tire Replacement">Tire Replacement</option>
                            <option value="AC Repair">AC Repair</option>
                        </select>
                    </div>

                    <!-- Appointment Date -->
                    <div class="mb-3">
                        <label for="appointmentDate" class="form-label">Appointment Date</label>
                        <input type="date" name="appointmentDate" class="form-control" id="appointmentDate" required aria-label="Appointment Date">
                    </div>

                    <!-- Status -->
                    <div class="mb-3">
                        <label for="status" class="form-label">Status</label>
                        <select name="status" class="form-control" id="status" required aria-label="Service Status">
                            <option value="">Select Status</option>
                            <option value="Pending">Pending</option>
                            <option value="Confirmed">Confirmed</option>
                            <option value="Completed">Completed</option>
                        </select>
                    </div>

                    <!-- Submit Button -->
                    <button type="submit" class="btn btn-primary w-100">Book Service</button>
                </form>
            </div>
        </div>
    </div>

    <script>
        // Set min date for appointment
        document.getElementById('appointmentDate').min = new Date().toISOString().split('T')[0];

        // Form validation
        document.getElementById('carServiceForm').addEventListener('submit', function(event) {
            let carModel = document.getElementById('carModel').value.trim();
            let carName = document.getElementById('carName').value.trim();
            let serviceType = document.getElementById('serviceType').value;
            let appointmentDate = document.getElementById('appointmentDate').value;
            let status = document.getElementById('status').value;

            if (!carModel || !carName || !serviceType || !appointmentDate || !status) {
                alert('Please fill out all required fields.');
                event.preventDefault();
            }
        });
    </script>

</body>
</html>
