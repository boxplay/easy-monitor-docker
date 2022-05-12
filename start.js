const exec = require('child_process').execSync

exec('npm run dev', (error, stdout, stderr) => {
  if (error) {
    console.error(`exec error: ${error}`);
    return;
  }
});