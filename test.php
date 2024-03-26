<?php include 'inc/header.php'; ?>
<?php 
	Session::checkSession();
	if (isset($_GET['q'])) {
		$num = $exm->checkNumber((int)$_GET['q']);
		if (isset($num)) {
			$number = $num;
		}
	}
	$total 		= $exm->getTotalRows();
	$question 	= $exm->getQuestionByNumber($number);
?>
<?php 
	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
		$process = $pro->processData($_POST);
	}
?>
<div class="main">

<div id="timer">00:00</div>


<script>// script.js

let startTime;
let endTime;

// Start the timer when the question is shown
function startTimer() {
    startTime = new Date();
    document.getElementById("timer").textContent = "00:00";
    updateTimer();
}

// Update the timer display every second
function updateTimer() {
    const now = new Date();
    const elapsed = new Date(now - startTime);
    const minutes = elapsed.getUTCMinutes().toString().padStart(2, '0');
    const seconds = elapsed.getSeconds().toString().padStart(2, '0');
    document.getElementById("timer").textContent = `${minutes}:${seconds}`;

    // Keep updating the timer every second
    setTimeout(updateTimer, 1000);
}

// Function to call when moving to the next question
function nextQuestion() {
    endTime = new Date();
    const timeTaken = (endTime - startTime) / 1000; // Time taken in seconds
    console.log(`Time taken for the question: ${timeTaken} seconds`);

    // Here, you can record the time taken to a variable, send it to a server, etc.
    // For demonstration, we'll just log it to the console.

    // Reset and start the timer for the next question
    startTimer();
}

document.getElementById("nextQuestion").addEventListener("click", nextQuestion);

// Initialize the timer for the first question
startTimer();
</script>


<h1>Question <?php echo $question['quesNo']; ?> of <?php echo $total; ?></h1>
	<div class="test">
		<form method="post" action="">
		<table> 
			<tr>
				<td colspan="2">
				 <h3>Que <?php echo $question['quesNo']; ?>: <?php echo $question['ques']; ?></h3>
				</td>
			</tr>
<?php 
	$answer = $exm->getAnswer($number);
	if ($answer) {
		while ($result = $answer->fetch_assoc()) {
?>
			<tr>
				<td>
				 <input type="radio" name="ans" value="<?php echo $result['id']; ?>"/><?php echo $result['ans']; ?>
				</td>
			</tr>
<?php } } ?>
			<tr>
			  <td>
				<input id="nextQuestion" type="submit" name="submit" value="Next Question"/>
				<input type="hidden" name="number" value="<?php echo $number; ?>" />
				</td>
			</tr>
		</table>
	</form>
</div>
 </div>
 <!-- External JS file -->

<?php include 'inc/footer.php'; ?>