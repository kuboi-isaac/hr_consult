
// Sample leave data
const leaveData = {
    labels: ['Annual Leave', 'Sick Leave', 'Unpaid Leave', 'Maternity Leave'],
    datasets: [{
        label: 'Leave Summary',
        data: [15, 8, 5, 2], // Can be changed
        backgroundColor: [
            'rgba(54, 162, 235, 0.6)',
            'rgba(255, 99, 132, 0.6)',
            'rgba(255, 206, 86, 0.6)',
            'rgba(75, 192, 192, 0.6)'
        ],
        borderColor: [
            'rgba(54, 162, 235, 1)',
            'rgba(255, 99, 132, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)'
        ],
        borderWidth: 1
    }]
};

// Create the bar graph
const ctx = document.getElementById('leaveSummaryChart').getContext('2d');
const leaveSummaryChart = new Chart(ctx, {
    type: 'bar',
    data: leaveData,
    options: {
        scales: {
            y: {
                beginAtZero: true,
                title: {
                    display: true,
                    text: 'Number of Days'
                }
            },
            x: {
                title: {
                    display: true,
                    text: 'Leave Types'
                }
            }
        },
        plugins: {
            legend: {
                display: false
            }
        }
    }
});



// line graph
document.addEventListener("DOMContentLoaded", function () {
    // Sample data (working hours by month)
    const months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    const hoursWorked = [160, 150, 168, 155, 170, 175, 160, 165, 170, 168, 160, 155];

    // Create a line chart
    const ctx = document.getElementById("lineChart").getContext("2d");
    const lineChart = new Chart(ctx, {
        type: "line",
        data: {
            labels: months,
            datasets: [{
                label: "Working Hours",
                data: hoursWorked,
                borderColor: "blue",
                borderWidth: 2,
                fill: false,
            }],
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true,
                    max: 180, // Adjust the maximum value as needed
                },
            },
        },
    });
});

