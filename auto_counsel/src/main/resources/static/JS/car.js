
//$('#addCarForm').on('submit', function (event) {
//            event.preventDefault(); // Prevent the default form submission
//
//            // Create a FormData object to handle file upload
//            var formData = new FormData(this);
//
//            $.ajax({
//                url: '/cars/save', // The URL from your form action attribute
//                type: 'POST',
//                data: formData,
//                processData: false, // Required for file uploads
//                contentType: false, // Required for file uploads
//                success: function (response) {
//                    // Handle success (e.g., show a success message or close the modal)
//                    alert('Car added successfully!');
//                    $('#addCarModal').modal('hide');
//                },
//                error: function (xhr, status, error) {
//                    // Handle error (e.g., show an error message)
//                    alert('Error adding car: ' + error);
//                }
//            });
//        });
//$("#addbtn").click(function(){
//
//});

function addForm(event) {
        event.preventDefault();  // Prevent the default form submission

        // Get the form element
        var form = $('#addCarForm')[0];  // Get the form as a DOM element

        // Create a FormData object from the form
        var formData = new FormData(form);

        // You can now pass the formData object to your server
        $.ajax({
            url: '/cars/save',  // Your backend endpoint
            type: 'POST',
            data: formData,
            processData: false,  // Don't let jQuery process the data
            contentType: false,  // Let the browser set the content-type
            success: function(response) {
                alert('Car added successfully!');
                $('#addCarModal').modal('hide'); // Optionally hide the modal on success
            },
            error: function(xhr, status, error) {
                alert('Error adding car: ' + error);
            }
        });
    }