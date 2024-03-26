// script.js

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
