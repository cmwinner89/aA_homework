console.log("Hello from the JavaScript console!");

// Your AJAX request here

// Add another console log here, outside your AJAX request
$.ajax({
    type: 'GET',
    url: "http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b",
    dataType: "json",
    success(data) {
      console.log("We have your weather!")
      console.log(data);
    },
    error() {
      console.error("An error occurred.");
    },
 });


 console.log("Goodbye from the console");
//  $.ajax({
//     url: '/users',
//     type: "GET",
//     dataType: "json",
//     success: function (data) {
//         console.log(data);
//     },
//     error: function (error) {
//         console.log(`Error ${error}`);
//     }
// });
