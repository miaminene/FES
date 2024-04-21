var ctx = document.getElementById('myChart').getContext('2d');
var donutChart = document.getElementById('donutChart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'doughnut',
    data: {
        labels: ['IICS', 'IHPD', 'IOM', 'ION', 'IOE'],
        datasets: [{
            label: 'Institutions',
            data: [750, 800, 450, 250, 200],
            backgrounColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(255, 150, 200, 1)'
            ],

    
        }]
    },
    options: {
        responsive: true,
    }
});

var donutChart = new Chart(donutChart, {
    type: 'bar',
    data: {
        labels: ['IICS', 'IHPD', 'IOM', 'ION', 'IOE'],
        datasets: [{
            label: 'Evaluation Rate',
            data: [60, 50, 55, 70, 75],
            backgrounColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)'
            ],
            borderWidth: 2
        }]
    },
    options: {
        responsive: true,
    }
});
