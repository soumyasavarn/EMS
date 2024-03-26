 </section>
<section class="footeroption">
		<h2>
			<span>Copyright &copy;</span>
			<script type="text/javascript">
				var d = new Date();
				document.write(d.getFullYear());
			</script>
			<span>
				<a target="_blank" href="https://github.com/soumyasavarn">
					soumyasavarn
				</a>
			</span>
		</h2>
	</section>
</div>
<script>
document.addEventListener('DOMContentLoaded', (event) => {
    let startTime = new Date();

    function updateTimer() {
        const now = new Date();
        const elapsed = new Date(now - startTime);
        const minutes = elapsed.getUTCMinutes().toString().padStart(2, '0');
        const seconds = elapsed.getSeconds().toString().padStart(2, '0');
        document.getElementById("timer").textContent = `${minutes}:${seconds}`;

        setTimeout(updateTimer, 1000);
    }

    // Initialize the timer for the first question
    updateTimer();

    // Handling the form submission to include time taken
    document.getElementById("questionForm").addEventListener("submit", function(event) {
        const endTime = new Date();
        const timeTaken = ((endTime - startTime) / 1000).toFixed(2); // Round to two decimal places

        // Optionally, check if a timeTaken input already exists to avoid creating duplicates
        let timeInput = document.querySelector("input[name='timeTaken']");
        if (!timeInput) {
            timeInput = document.createElement("input");
            timeInput.type = "hidden";
            timeInput.name = "timeTaken";
            this.appendChild(timeInput);
        }
        timeInput.value = timeTaken;
        
        // No need to prevent default form submission unless you're handling it asynchronously
    });
});
</script>


</body>
</html>