<!DOCTYPE html>
<html lang="en">
<head>
    <?php include_once "include_common_links.html"; ?>
    <title>Test</title>

    <style>
        
		body {
			opacity: 0;
		}

	</style>

</head>


<body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-layout="default">

	<div class="wrapper">
        <?php include_once "include_admin_sidebar.html"; ?>

        <div class="main">

            <?php include_once "include_top_nav_bar.html"; ?>
        
            <main class="content">
				<div class="container-fluid p-0">

					<div class="row mb-2 mb-xl-3">
						<div class="col-auto d-none d-sm-block">
							<h3><strong>Analytics</strong> Dashboard</h3>
						</div>

					</div>
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									
								</div>
							</div>
						</div>
					</div>

				</div>
			</main>

            <?php include_once "include_footer.html"; ?>

        </div>

    </div>


    <script src="js/app.js"></script>
    <script src="js/year.js"></script>

    
</body>
</html>