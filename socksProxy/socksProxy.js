//	Install npm dependencies first
//	npm install --save socksv5@0.0.6

var missingDeps = [];

try{
	var socks = require('socksv5');
}catch(e){
	missingDeps.push("socksv5@0.0.6");
}

if(missingDeps.length>0){
	console.log("Missing dependencies. Please see missingDeps file for details!");
	var data = '';
	missingDeps.forEach(function(dep){
		data += "npm install "+dep+"\n";
	});
	require('fs').writeFileSync('missingDeps', data);
	process.exit(15);
}

var srv = socks.createServer(
	function(info, accept, deny) {
		console.log(info);
		accept();
	}
);

var port = process.argv[2]!=null?process.argv[2]:1080;
var ip = process.argv[3]!=null?process.argv[3]:'0.0.0.0';

srv.listen(port, ip, function() {
	console.log('Socks5 Proxy server up and running');
	console.log('-> Listening on '+ip+':'+port);
});

srv.useAuth(socks.auth.None());
