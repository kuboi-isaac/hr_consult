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

document.addEventListener("DOMContentLoaded", function () {
  // Bar Chart
  var ctxBar = document.getElementById("courseChart").getContext("2d");
  var barChart = new Chart(ctxBar, {
    type: "bar",
    data: {
      labels: ["IT", "Sales", "Accounts", "Marketing", "Production", "Finance"],
      datasets: [
        {
          label: "Enrollment",
          data: [100, 150, 95, 50, 25, 70],
          backgroundColor: ["rgba(183, 201, 226)", "rgba(183, 201, 226)", "rgba(183, 201, 226)", "rgba(183, 201, 226)"],
          borderColor: ["rgba(75, 192, 192, 1)", "rgba(54, 162, 235, 1)"],
          borderWidth: 1,
        },
        {
          label: "Engagement",
          data: [90, 100, 80, 65, 40, 60],
          backgroundColor: ["rgb(0,255,255)", "rgb(0,255,255)", "rgb(0,255,255)", "rgb(0,255,255)"],
          borderColor: ["rgba(75, 192, 192, 1)", "rgba(54, 162, 235, 1)"],
          borderWidth: 1,
        },
      ],
    },
    options: {
      scales: {
        y: {
          beginAtZero: true,
        },
      },
    },
  });

  // Pie Chart
  var ctxPie = document.getElementById("coursePieChart").getContext("2d");
  var pieChart = new Chart(ctxPie, {
    type: "pie",
    data: {
      labels: ["IT", "Sales", "Accounts", "Finance"],
      datasets: [
        {
          data: [150, 100, 70, 40],
          backgroundColor: ["rgb(128,128,0)", "rgb(0,255,255)", "rgb(0,128,0)", "rgb(255,20,127)"],
          borderColor: ["rgba(75, 192, 192, 1)", "rgba(54, 162, 235, 1)"],
          borderWidth: 1,
        },
      ],
    },
  });

  // Line Chart
  var ctxLine = document.getElementById("courseLineChart").getContext("2d");
  var lineChart = new Chart(ctxLine, {
    type: "line",
    data: {
      labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
      datasets: [
        {
          label: "Attendence",
          data: [100, 120, 90, 140, 160, 99, 80, 90, 150, 180, 150, 100],
          borderColor: "rgba(75, 192, 192, 1)",
          borderWidth: 1,
          fill: false,
        },
        {
          label: "Leave",
          data: [25, 60, 50, 15, 80, 50, 70, 65, 130, 165, 100, 87],
          borderColor: "rgba(0,128,0)",
          borderWidth: 1,
          fill: false,
        },
      ],
    },
    options: {
      scales: {
        y: {
          beginAtZero: true,
        },
      },
    },
  });
});


document.addEventListener("DOMContentLoaded", function () {
  const dropdowns = document.querySelectorAll(".dropdownn");

  dropdowns.forEach(function (dropdown) {
    dropdown.addEventListener("click", function () {
      this.querySelector(".dropdown-contents").style.display = "block";
    });

    dropdown.addEventListener("mouseleave", function () {
      this.querySelector(".dropdown-contents").style.display = "none";
    });
  });
});


