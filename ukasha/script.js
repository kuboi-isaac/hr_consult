// When the user clicks on div, open the popup
function myFunction() {
    var popup = document.getElementById("myPopup");
    popup.classList.toggle("show");

    popup.addEventListener('click', function(event) {
      if (event.target === popup) {
        popup.style.display = 'none';
        popup.classList.remove("active");
      }
    });
  document.body.addEventListener('click', function(event) {
    if (popup.classList.contains("active") && !popup.contains(event.target)) {
      popup.style.display = 'none';
      popup.classList.remove("active");
    }
  });
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


function openProfilePopup() {
  const profilePopup = document.getElementById("profilePopup");
  profilePopup.classList.add("active");
}

function closeProfilePopup() {
  const profilePopup = document.getElementById("profilePopup");
  profilePopup.classList.remove("active");
}




function searchAndHighlight() {
  const searchInput = document.getElementById("searchInput");
  const searchText = searchInput.value.trim().toLowerCase();
  
  if (searchText === "") {
    clearHighlighting();
    return;
  }

  const allTextElements = document.querySelectorAll("body *");
  let resultsFound = false;

  allTextElements.forEach((element) => {
    const walker = document.createTreeWalker(element, NodeFilter.SHOW_TEXT, null, false);
    
    while (walker.nextNode()) {
      const textNode = walker.currentNode;
      const parentNode = textNode.parentNode;

      if (textNode.nodeValue.toLowerCase().includes(searchText)) {
        const splitText = textNode.nodeValue.split(new RegExp(`(${searchText})`, "gi"));
        const highlightedHtml = splitText.map((textPart) => {
          if (textPart.toLowerCase() === searchText) {
            resultsFound = true;
            return `<span class="highlight">${textPart}</span>`;
          } else {
            return textPart;
          }
        }).join("");

        const tempElement = document.createElement("div");
        tempElement.innerHTML = highlightedHtml;
        const newNode = tempElement.firstChild;
        parentNode.replaceChild(newNode, textNode);
      }
    }
  });

  if (!resultsFound) {
    document.getElementById("noResults").style.display = "block";
  } else {
    document.getElementById("noResults").style.display = "none";
  }
}

// function collapse() {
//   const pop = document.body.querySelector('.popupp');

//   const icon = document.querySelector('.notification');
//   icon.addEventListener('click', function() {
//     if (pop.classList.contains("active")) {
//       pop.style.display = 'none';
//     } else {
//       pop.style.display = 'block';
//     }
//     pop.classList.toggle("active");
//   });
  
//   pop.addEventListener('click', function(event) {
//     if (event.target === pop) {
//       pop.style.display = 'none';
//       pop.classList.remove("active");
//     }
//   });
// }

function collapse() {
  const pop = document.body.querySelector('.popupp');

  const icon = document.querySelector('.notification');
  icon.addEventListener('click', function(event) {
    if (pop.classList.contains("active")) {
      pop.style.display = 'none';
      pop.classList.remove("active");
    } else {
      pop.style.display = 'block';
      pop.classList.add("active");
    }
    event.stopPropagation(); // Prevent the click from propagating to the body
  });

  pop.addEventListener('click', function(event) {
    if (event.target === pop) {
      pop.style.display = 'none';
      pop.classList.remove("active");
    }
  });

  // Click event on the body to hide the popup
  document.body.addEventListener('click', function(event) {
    if (pop.classList.contains("active") && !pop.contains(event.target)) {
      pop.style.display = 'none';
      pop.classList.remove("active");
    }
  });
}


