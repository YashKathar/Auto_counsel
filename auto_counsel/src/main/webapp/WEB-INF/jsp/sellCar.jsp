<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sell Your Car</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        /* Background styling */
        body {
            background: url('https://source.unsplash.com/1600x900/?car,luxury') no-repeat center center/cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Overlay effect */
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.6);
            z-index: 0;
        }

        /* Container styling */
        .container {
            max-width: 550px;
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(255, 255, 255, 0.3);
            position: relative;
            z-index: 1;
            animation: fadeIn 1s ease-in-out;
        }

        /* Header */
        h2 {
            text-align: center;
            color: #007bff;
            font-weight: bold;
            margin-bottom: 20px;
            animation: slideIn 1s ease-in-out;
        }

        /* Form styling */
        .form-label {
            font-weight: bold;
            color: #495057;
        }
        .form-control {
            border-radius: 8px;
            border: 1px solid #ced4da;
        }
        .btn-primary {
            width: 100%;
            background: linear-gradient(135deg, #007bff, #0056b3);
            border: none;
            padding: 10px;
            font-size: 16px;
            border-radius: 8px;
            transition: 0.3s;
        }
        .btn-primary:hover {
            background: linear-gradient(135deg, #0056b3, #003f7f);
        }

        /* Image upload preview */
        .image-preview {
            width: 100%;
            height: 200px;
            border: 2px dashed #ced4da;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #6c757d;
            font-size: 14px;
            cursor: pointer;
            background: #f8f9fa;
        }
        .image-preview img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: none;
            border-radius: 8px;
        }

        /* Animations */
        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.9); }
            to { opacity: 1; transform: scale(1); }
        }
        @keyframes slideIn {
            from { transform: translateY(-20px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="container">
        <h2>Sell Your Car</h2>

        <form action="/cars/sell" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="carModel" class="form-label">Car Model</label>
                <input type="text" class="form-control" id="carModel" name="carModel" required>
            </div>

            <div class="mb-3">
                <label for="carName" class="form-label">Car Name</label>
                <input type="text" class="form-control" id="carName" name="carName" required>
            </div>

            <div class="mb-3">
                <label for="year" class="form-label">Manufacturing Year</label>
                <input type="number" class="form-control" id="year" name="year" required>
            </div>

            <div class="mb-3">
                <label for="price" class="form-label">Expected Price (₹)</label>
                <input type="number" class="form-control" id="price" name="price" required>
            </div>

            <div class="mb-3">
                <label for="contactNumber" class="form-label">Contact Number</label>
                <input type="text" class="form-control" id="contactNumber" name="contactNumber" required>
            </div>

            <!-- <div class="mb-3">
                <label for="imageUrl" class="form-label">Car Image</label>
                <div class="image-preview" onclick="document.getElementById('imageUrl').click();">
                    <span>Click to upload image</span>
                    <img id="previewImg">
                </div>
                <input type="file" class="form-control" id="imageUrl" name="imageUrl" accept="image/*" style="display: none;" onchange="previewImage(event)">
            </div> -->

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <script>
        // function previewImage(event) {
        //     const file = event.target.files[0];
        //     if (file) {
        //         const reader = new FileReader();
        //         reader.onload = function() {
        //             const preview = document.getElementById('previewImg');
        //             preview.src = reader.result;
        //             preview.style.display = 'block';
        //             document.querySelector('.image-preview span').style.display = 'none';
        //         };
        //         reader.readAsDataURL(file);
        //     }
        // }
    </script>
</body>
</html>
