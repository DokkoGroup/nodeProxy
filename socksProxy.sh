#!/bin/bash
dir=`dirname "$0"`
if [ "$1" == "--help" ]; then
	echo "Usage:"
	echo "------"
	echo "$0 [port] [bind-ip]"
	echo ""
	echo "Examples:"
	echo "---------"
	echo "$0 1080 127.0.0.1"
	echo "$0 8080 0.0.0.0"
	echo "$0 8080"
	echo "$0"
	exit
fi

cd "$dir/socksProxy"
echo "Launching socksProxy"
node socksProxy.js $*
if [ $? -eq 15 ]; then
	if [ -f "missingDeps" ]; then
		echo "Installing missing dependencies..."
		cat missingDeps 
		. missingDeps
		rm -f missingDeps
		echo "Done!"
		echo "Re-launching socksProxy"
		node socksProxy.js $*
	fi
fi