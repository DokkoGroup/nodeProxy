#!/bin/bash
dir=`dirname "$0"`
if [ "$1" == "--help" ]; then
	echo "Usage:"
	echo "------"
	echo "$0 [port] [bind-ip]"
	echo ""
	echo "Examples:"
	echo "---------"
	echo "$0 8080 127.0.0.1"
	echo "$0 8000 0.0.0.0"
	echo "$0 8000"
	echo "$0"
	exit
fi

cd "$dir/httpProxy"
echo "Launching httpProxy"
node httpProxy.js $*
if [ $? -eq 15 ]; then
	if [ -f "missingDeps" ]; then
		echo "Installing missing dependencies..."
		cat missingDeps 
		. missingDeps
		rm -f missingDeps
		echo "Done!"
		echo "Re-launching httpProxy"
		node httpProxy.js $*
	fi
fi