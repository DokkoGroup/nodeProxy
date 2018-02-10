nodeProxy
=========

Super lightweight HTTP and Socks5 proxy servers implemented in nodejs.

This project is intended for those cases were you need to setup a proxy super fast.

How to Install
==============

No real installation needed :) Just clone the project:
```bash
git clone https://github.com/DokkoGroup/nodeProxy
```

How to use (on mac or linux)
============================

Once you've cloned the repository, just run the script for the server you need.

For HTTP Proxy
```bash
cd nodeProxy
./httpProxy.sh
```


For Socks Proxy
```bash
cd nodeProxy
./socksProxy.sh
```

If you want to change your bind address and listen port, you can add the options PORT and BIND-IP parameters to the commands.

For help:
```bash
./httpProxy.sh --help

#WILL DISPLAY:
#Usage:
#------
./httpProxy.sh [port] [bind-ip]

#Examples:
#---------
./httpProxy.sh 8080 127.0.0.1
./httpProxy.sh 8000 0.0.0.0
./httpProxy.sh 8000
./httpProxy.sh
```


```bash
./socksProxy.sh --help

#WILL DISPLAY:
#Usage:
#------
./socksProxy.sh [port] [bind-ip]

#Examples:
#---------
./socksProxy.sh 1080 127.0.0.1
./socksProxy.sh 8080 0.0.0.0
./socksProxy.sh 8080
./socksProxy.sh

```


How to use (on windows)
=======================

Once you've cloned or downloaded the repository, just run the script for the server you need.

For HTTP Proxy
```bash
cd nodeProxy/httpProxy
node httpProxy.js
```


For Socks Proxy
```bash
cd nodeProxy/socksProxy
node socksProxy.js
```

If you want to change your bind address and listen port, you can add the options PORT and BIND-IP parameters to the commands.

Examples:
```bash
node socksProxy.js 1080 127.0.0.1
node socksProxy.js 8080 0.0.0.0
node socksProxy.js 8080
node socksProxy.js

# OR

node httpProxy.js 8080 127.0.0.1
node httpProxy.js 8000 0.0.0.0
node httpProxy.js 8000
node httpProxy.js
```



License
=======

The MIT License (MIT) - [LICENSE.md](LICENSE.md)

Copyright &copy; 2018 DokkoGroup (http://www.dokkogroup.com.ar)

Author: Federico Bricker
