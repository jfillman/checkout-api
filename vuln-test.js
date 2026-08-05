// TEMPORARY - deliberately vulnerable file to verify sast-scan fails closed correctly
// AND notifies Slack on failure AND build-image still gets blocked (Phase 3 follow-up).
const { exec } = require('child_process');
function runUserCommand(userInput) {
  exec('echo ' + userInput, (err, stdout) => {
    console.log(stdout);
  });
}
module.exports = { runUserCommand };
