$(document).ready(function () {
    $("#loginForm").on("submit", function (event) {
        event.preventDefault();

        const user = {
            userName: $("#username").val(),
            password: $("#password").val(),
        };

        $.ajax({
            url: "/auth/login",  // Ensure the URL matches the backend
            type: "POST",  // Ensure it's a POST request
            contentType: "application/json",  // Set content type as JSON
            data: JSON.stringify(user),  // Send the data as a JSON payload
            success: function (response) {

                window.location.href = response.redirect;
            },
            error: function (xhr, status, error) {
                // Handle error response
                const toastLiveExample = document.getElementById('liveToast');
                $(".toast-body").html("Username and password not matched").css("color", "red");
                const toast = new bootstrap.Toast(toastLiveExample);
                toast.show();
            }
        });
    });
});
