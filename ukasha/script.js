// When the user clicks on div, open the popup
function myFunction() {
    var popup = document.getElementById("myPopup");
    popup.classList.toggle("show");
  }

 


//   function toggleNotificationPopup() {
//     var popup = document.getElementById("notificationPopup");
//     popup.classList.toggle("show");
//     // You can also fetch and populate notification data here
//   }
  
//   // Call this function to set/update the notification count
//   function setNotificationCount(count) {
//     var notificationCount = document.querySelector(".notification-count");
//     notificationCount.textContent = count;
//   }

//   // Example function to fetch notifications and populate the popup
// function fetchNotifications() {
//     // Simulated example data, replace with your actual data fetching logic
//     var notifications = [
//       "New message from John",
//       "You have a meeting at 2 PM",
//       "Course enrollment updates",
//     ];
//     var notificationPopup = document.getElementById("notificationPopup");
//   notificationPopup.innerHTML = ""; // Clear previous notifications

//   notifications.forEach(function (notification) {
//     var notificationItem = document.createElement("div");
//     notificationItem.textContent = notification;
//     notificationPopup.appendChild(notificationItem);
//   });
// }


// document.addEventListener("DOMContentLoaded", function () {
//     // Initialize notification count
//     setNotificationCount(3); // Set the initial notification count
  
//     // Fetch and populate notifications
//     fetchNotifications();
//   });