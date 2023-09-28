<!-- footer -->
<footer class="footer">
    <div class="container-fluid">
        <div class="row text-muted">
            <div class="col-6 text-start">
                <p class="mb-0">
                    Copyright &copy; <span id="currentYear"></span> <a href="index.html" class="text-muted"><strong>MFI IT Solutions Dev't Team</strong></a> – All Rights Reserved.
                </p>
            </div>
            <div class="col-6 text-end">
                <ul class="list-inline">
                    <li class="list-inline-item">
                        <a class="text-muted" href="#">Support</a>
                    </li>
                    <li class="list-inline-item">
                        <a class="text-muted" href="#">Help Center</a>
                    </li>
                    <li class="list-inline-item">
                        <a class="text-muted" href="#">Privacy</a>
                    </li>
                    <li class="list-inline-item">
                        <a class="text-muted" href="#">Terms</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>


<script>
    // Get the current year
    const currentYear = new Date().getFullYear();
    
    // Insert the current year into the HTML element
    document.getElementById('currentYear').textContent = currentYear;
</script>