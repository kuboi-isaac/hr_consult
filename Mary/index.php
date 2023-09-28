<!DOCTYPE html>
<html lang="en">
<head>
    <?php include_once "common_links.php"; ?>
    <title>HRMS</title>

    <style>
       
	body {
			opacity: 0;
		}

	</style>

</head>


<body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-layout="default">

	<div class="wrapper">
        <?php include_once "sidebar.php"; ?>

        <div class="main">

            <?php include_once "top_nav_bar.php"; ?>
        
            <main class="content">
				<div class="container-fluid p-0">

					<div class="row mb-2 mb-xl-3">
						<div class="col-auto d-none d-sm-block">
							<h3><strong>Analytics</strong> Dashboard</h3>
						</div>

					</div>
                    <div class="row">
						<div class="col-xl-6 col-xxl-5 d-flex">
							<div class="w-100">
								<div class="row">

									<div class="col-sm-6">
										<div class="card">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">Employee Management</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="users"></i>
														</div>
													</div>
												</div>
													<div class="card-body">
                                                    <!-- Add content for employee information here -->
                                                    <p>Total Employees: 100</p>
                                                    <p>Active Employees: 80</p>
                                                    <p>Inactive Employees: 20</p>
                                                </div>
											
											</div>
										</div>
										<div class="card">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">Benefits Administration</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="users"></i>
														</div>
													</div>
												</div>
												<div class="card-body">
													<!-- Add content for benefits administration here -->
													<p>Benefit Plans: 3</p>
													<p>Enrollment Period: Open</p>
													<p>Employee Queries: 10</p>
												</div>
												
											</div>
										</div>


									</div>
									<div class="col-sm-6">
										<div class="card">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">Leave Management</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="minus-square"></i>
														</div>
													</div>
												</div>
												
												<div class="card-body">
													<p class="text-danger">Leaves Taken: 200</p>
                                                    <p class="text-success" >Remaining Leaves: 100</p>
                                                    <p>Upcoming Leaves: 5</p>
												</div>												
											</div>
										</div>
											<div class="card">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">Time and Attendance</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="clock"></i>
														</div>
													</div>
												</div>
												<div class="card-body">
													<p>Work Hours : 400</p>
													<p>Late Arrivals: 8</p>
													<p>Overtime Hours: 20</p>
												</div>
												
											</div>
										</div>
									</div>

									<div class="col-sm-6">
										<div class="card">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">Recruitment</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="user-plus"></i>
														</div>
													</div>
												</div>
												<div class="card-body">
													<!-- Add content for recruitment here -->
													<p>Total Job Openings: 10</p>
													<p> New Applicants : 5</p>
													<p>New Hires: 2</p>
												</div>
													
											</div>
										</div>

										
									</div>
								
									<div class="col-sm-6">
										<div class="card">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">Learning and Development</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="book"></i>
														</div>
													</div>
												</div>
													<div class="card-body">
														<!-- Add content for learning and development here -->
														<p>Courses Offered: 20</p>
														<p> Certifications: 15</p>
													</div>
												
											</div>
										</div>
										
										
									</div>

								</div>
								
							</div>
							
						</div>
						

						<!-- line chart  -->
						<div class="col-xl-6 col-xxl-7">
							<div class="card flex-fill w-100">
								<div class="card-header">

									<h5 class="card-title mb-0"> Annual Performance </h5>
								</div>
								<div class="card-body py-3">
									<div class="chart chart-sm">
										<canvas id="chartjs-dashboard-line"></canvas>
									</div>
								</div>
							</div>

							<div class="card flex-fill w-100">
								<div class="card-header">

									<h5 class="card-title mb-0">Total Employees</h5>
								</div>
								<div class="card-body py-3">
									<div class="chart chart-sm">
										<canvas id="chartjs-dashboard-pie"></canvas>
									</div>
									<table class="table mb-0">
											<tbody>
												<tr>
													<td>Onboarding</td>
													<td class="text-end">1000</td>
												</tr>
												<tr>
													<td>Offboarding</td>
													<td class="text-end">500</td>
												</tr>
												<tr>
													<td>Others</td>
													<td class="text-end">250</td>
												</tr>
											</tbody>
										</table>
								</div>
							</div>



						</div>
						


					</div>
                    
                    

					<div class="row">
						<div class="col-12 col-lg-8 col-xxl-9 d-flex">
							<div class="card flex-fill">
								<div class="card-header">

									<h5 class="card-title mb-0">Employee list</h5>
								</div>
								<table class="table table-hover my-0">
									<thead>
										<tr   class="table-dark">
											<th>Name</th>
											<th class="d-none d-xl-table-cell">Department</th>
											<th class="d-none d-xl-table-cell">Role</th>
											<th>Status</th>
											<th class="d-none d-md-table-cell">Action</th>
										</tr>
									</thead>
									<tbody >
										<tr>
											<td>Brenda</td>
											<td class="d-none d-xl-table-cell">IT Solution</td>
											<td class="d-none d-xl-table-cell">Manager</td>
											<td><span class="badge bg-success">Active</span></td>
											<td><i class="align-middle" data-feather="more-vertical"></i></td>
										</tr>
										<tr >
											<td >Mary</td>
											<td class="d-none d-xl-table-cell">IT Solution</td>
											<td class="d-none d-xl-table-cell">Developer
											<td><span class="badge bg-warning">On leave</span></td>
											<td><i class="align-middle" data-feather="more-vertical"></i></td>
										</tr>
										<tr>
											<td>Myles</td>
											<td class="d-none d-xl-table-cell">Accounting</td>
											<td class="d-none d-xl-table-cell">Accountant
											<td><span class="badge bg-danger">Inactive</span></td>
											<td><i class="align-middle" data-feather="more-vertical"></i></td>
										</tr>
										<tr>
											<td>Brenda</td>
											<td class="d-none d-xl-table-cell">IT Solution</td>
											<td class="d-none d-xl-table-cell">Manager</td>
											<td><span class="badge bg-success">Active</span></td>
											<td><i class="align-middle" data-feather="more-vertical"></i></td>
										</tr>
										<tr>
											<td >Mary</td>
											<td class="d-none d-xl-table-cell">IT Solution</td>
											<td class="d-none d-xl-table-cell">Developer
											<td><span class="badge bg-warning">On leave</span></td>
											<td><i class="align-middle" data-feather="more-vertical"></i></td>
										</tr>
										<tr >
											<td>Myles</td>
											<td class="d-none d-xl-table-cell">Accounting</td>
											<td class="d-none d-xl-table-cell">Accountant
											<td><span class="badge bg-danger">Inactive</span></td>
											<td><i class="align-middle" data-feather="more-vertical"></i></td>
										</tr>
										<tr >
											<td>Brenda</td>
											<td class="d-none d-xl-table-cell">IT Solution</td>
											<td class="d-none d-xl-table-cell">Manager</td>
											<td><span class="badge bg-success">Active</span></td>
											<td><i class="align-middle" data-feather="more-vertical"></i></td>
										</tr>
										<tr >
											<td >Mary</td>
											<td class="d-none d-xl-table-cell">IT Solution</td>
											<td class="d-none d-xl-table-cell">Developer
											<td><span class="badge bg-warning">On leave</span></td>
											<td><i class="align-middle" data-feather="more-vertical"></i></td>
										</tr>
										<tr>
											<td>Myles</td>
											<td class="d-none d-xl-table-cell">Accounting</td>
											<td class="d-none d-xl-table-cell">Accountant
											<td><span class="badge bg-danger">Inactive</span></td>
											<td><i class="align-middle" data-feather="more-vertical"></i></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="col-12 col-lg-4 col-xxl-3 d-flex">
							<div class="card flex-fill w-100">
								<div class="card-header">

									<h5 class="card-title mb-0"> Attendence Overview</h5>
								</div>
								<div class="card-body d-flex w-100">
									<div class="align-self-center chart chart-lg">
										<canvas id="chartjs-dashboard-bar"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>

					<table class="table table-hover">
  ...
					</table>

				</div>
			</main>

            <?php include_once "footer.php"; ?>

        </div>

    </div>


    <script src="js/app.js"></script>
    <script src="js/year.js"></script>

    <script>
		document.addEventListener("DOMContentLoaded", function() {
			var ctx = document.getElementById("chartjs-dashboard-line").getContext("2d");
			var gradient = ctx.createLinearGradient(0, 0, 0, 225);
			gradient.addColorStop(0, "rgba(215, 227, 244, 1)");
			gradient.addColorStop(1, "rgba(215, 227, 244, 0)");
			// Line chart
			new Chart(document.getElementById("chartjs-dashboard-line"), {
				type: "line",
				data: {
					labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
					datasets: [{
						
						fill: true,
						backgroundColor: gradient,
						borderColor: window.theme.primary,
						data: [
							2115,
							1562,
							1584,
							1892,
							1587,
							1923,
							2566,
							2448,
							2805,
							3438,
							2917,
							3327
						]
					}]
				},
				options: {
					maintainAspectRatio: false,
					legend: {
						display: false
					},
					tooltips: {
						intersect: false
					},
					hover: {
						intersect: true
					},
					plugins: {
						filler: {
							propagate: false
						}
					},
					scales: {
						xAxes: [{
							reverse: true,
							gridLines: {
								color: "rgba(0,0,0,0.0)"
							}
						}],
						yAxes: [{
							ticks: {
								stepSize: 1000
							},
							display: true,
							borderDash: [3, 3],
							gridLines: {
								color: "rgba(0,0,0,0.0)"
							}
						}]
					}
				}
			});
		});
	</script>

	<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Pie chart
			new Chart(document.getElementById("chartjs-dashboard-pie"), {
				type: "pie",
				data: {
					labels: ["Onboarding", "Offboarding", "Others"],
					datasets: [{
						data: [1000, 500, 250],
						backgroundColor: [
							window.theme.primary,
							window.theme.warning,
							window.theme.danger
						],
						borderWidth: 5
					}]
				},
				options: {
					responsive: !window.MSInputMethodContext,
					maintainAspectRatio: false,
					legend: {
						display: false
					},
					cutoutPercentage: 75
				}
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Bar chart
			new Chart(document.getElementById("chartjs-dashboard-bar"), {
				type: "bar",
				data: {
					labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
					datasets: [{
						label: "This year",
						backgroundColor: window.theme.primary,
						borderColor: window.theme.primary,
						hoverBackgroundColor: window.theme.primary,
						hoverBorderColor: window.theme.primary,
						data: [54, 67, 41, 55, 62, 45, 55, 73, 60, 76, 48, 79],
						barPercentage: .75,
						categoryPercentage: .5
					}]
				},
				options: {
					maintainAspectRatio: false,
					legend: {
						display: false
					},
					scales: {
						yAxes: [{
							gridLines: {
								display: false
							},
							stacked: false,
							ticks: {
								stepSize: 20
							}
						}],
						xAxes: [{
							stacked: false,
							gridLines: {
								color: "transparent"
							}
						}]
					}
				}
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var markers = [{
					coords: [31.230391, 121.473701],
					name: "Shanghai"
				},
				{
					coords: [28.704060, 77.102493],
					name: "Delhi"
				},
				{
					coords: [6.524379, 3.379206],
					name: "Lagos"
				},
				{
					coords: [35.689487, 139.691711],
					name: "Tokyo"
				},
				{
					coords: [23.129110, 113.264381],
					name: "Guangzhou"
				},
				{
					coords: [40.7127837, -74.0059413],
					name: "New York"
				},
				{
					coords: [34.052235, -118.243683],
					name: "Los Angeles"
				},
				{
					coords: [41.878113, -87.629799],
					name: "Chicago"
				},
				{
					coords: [51.507351, -0.127758],
					name: "London"
				},
				{
					coords: [40.416775, -3.703790],
					name: "Madrid "
				}
			];
			var map = new jsVectorMap({
				map: "world",
				selector: "#world_map",
				zoomButtons: true,
				markers: markers,
				markerStyle: {
					initial: {
						r: 9,
						strokeWidth: 7,
						stokeOpacity: .4,
						fill: window.theme.primary
					},
					hover: {
						fill: window.theme.primary,
						stroke: window.theme.primary
					}
				},
				zoomOnScroll: false
			});
			window.addEventListener("resize", () => {
				map.updateSize();
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var date = new Date(Date.now() - 5 * 24 * 60 * 60 * 1000);
			var defaultDate = date.getUTCFullYear() + "-" + (date.getUTCMonth() + 1) + "-" + date.getUTCDate();
			document.getElementById("datetimepicker-dashboard").flatpickr({
				inline: true,
				prevArrow: "<span title=\"Previous month\">&laquo;</span>",
				nextArrow: "<span title=\"Next month\">&raquo;</span>",
				defaultDate: defaultDate
			});
		});
	</script>
	<script src="https://kit.fontawesome.com/90e163a4d2.js" crossorigin="anonymous"></script>
</body>
</html>