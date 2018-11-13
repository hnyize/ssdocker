#!/bin/sh

PASSWORD=${password}
SERVER=${server}
PORT=${port}
METHOD=${method}

if [ "${password}${server}${port}${method}" = "" ]; then
		echo "environment cannot null!"
else
		echo "starting ss..."
		nohup sslocal -s ${server} -p ${port} -l 1080 -k ${password} -m ${method} &
		echo "starting polipo..."
		/polipo -c /polipo.conf		
fi