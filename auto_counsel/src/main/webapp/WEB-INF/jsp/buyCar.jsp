<style>
    #buy-car-form {
        background-color: #f8f9fa;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        color: #007bff;
        font-weight: bold;
    }
    label {
        font-weight: 600;
        color: #343a40;
    }
    .form-control, .form-select {
        border-radius: 5px;
        border: 1px solid #ced4da;
        padding: 10px;
    }
    button {
        background-color: #007bff;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        font-size: 18px;
    }
    button:hover {
        background-color: #0056b3;
    }
</style>

<section id="buy-car-form" class="container mt-4">
    <h2 class="text-center mb-4">Buy a Car</h2>
    <form action="/cars/buy" method="POST" class="p-4 border rounded shadow">
        <div class="mb-3">
            <label for="brand" class="form-label">Select Brand</label>
            <select id="brand" name="brand" class="form-select" required>
                <option value="">Choose...</option>
                <option value="Toyota">Toyota</option>
                <option value="Honda">Honda</option>
                <option value="Ford">Ford</option>
                <option value="BMW">BMW</option>
            </select>
        </div>
        
        <div class="mb-3">
            <label for="model" class="form-label">Car Model</label>
            <input type="text" id="model" name="model" class="form-control" placeholder="Enter model name" required>
        </div>
        
        <div class="mb-3">
            <label for="price-range" class="form-label">Price Range</label>
            <select id="price-range" name="price_range" class="form-select">
                <option value="">Choose...</option>
                <option value="0-5">Below $5,000</option>
                <option value="5-10">$5,000 - $10,000</option>
                <option value="10-20">$10,000 - $20,000</option>
                <option value="20+">Above $20,000</option>
            </select>
        </div>
        
        <div class="mb-3">
            <label for="fuel-type" class="form-label">Fuel Type</label>
            <select id="fuel-type" name="fuel_type" class="form-select">
                <option value="">Choose...</option>
                <option value="Petrol">Petrol</option>
                <option value="Diesel">Diesel</option>
                <option value="Electric">Electric</option>
                <option value="Hybrid">Hybrid</option>
            </select>
        </div>
        
        <div class="mb-3 text-center">
            <button type="submit" class="btn">Search Car</button>
        </div>
    </form>
</section>
