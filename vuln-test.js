// TEMPORARY - deliberately vulnerable file to verify sast-scan fails closed on a real
// finding (Phase 3 item 8.4 verification). Deleted immediately after confirming.
const { exec } = require('child_process');

function runUserCommand(userInput) {
  exec('echo ' + userInput, (err, stdout) => {
    console.log(stdout);
  });
}

module.exports = { runUserCommand };
