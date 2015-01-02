#!/usr/bin/env node
console.log('updating node modules');
var exec = require('child_process').exec;
var os = require('os');


function do_exec(command, callback) {
	exec(command, { stdio: 'inherit', maxBuffer: 1024*1024 },
		function(error, stdout, stderr) {
			if (error !== null) {
				console.log(stderr);
				console.log('exec error: ' + error);
			} else {
				console.log(stdout);
				if (typeof callback == 'function') {
					callback();
				}
			}
		});
}

if (os.type() == "Darwin") {
	process.env.PATH += ':/usr/local/bin';
}

do_exec('npm install .', function(){
	do_exec('bower install', function(){
		console.log('compiling app');
		require("brunch").build({production:true}, function(){
			console.log('done.');
		});
	});
});
