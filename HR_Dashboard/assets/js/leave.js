
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