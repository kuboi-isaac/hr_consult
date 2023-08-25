// When the user clicks on div, open the popup
function myFunction() {
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}

// You might need this if you have multiple popups on your page
// const notificationPopup = document.getElementById("notificationPopup");

// You can directly use this if you have only one popup
const notificationPopup = document.querySelector(".popup");

document.getElementById("notification").addEventListener("click", function(event) {
  event.preventDefault();
  event.stopPropagation(); // Prevents click from propagating to document and immediately hiding the popup
  notificationPopup.style.display = "block";
});

// Close the popup when clicking outside of it
document.addEventListener("click", function(event) {
  if (!notificationPopup.contains(event.target)) {
    notificationPopup.style.display = "none";
  }
});
