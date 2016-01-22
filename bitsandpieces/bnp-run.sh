#!/bin/bash

# Replace variables if needed
initialScriptLocation=$PWD
if [ ! -f bnp-replacements-made.lock ];
then
	source ~/bin/bnp-replace-variables.sh
	cd $initialScriptLocation
	touch bnp-replacements-made.lock
fi

# Start nginx
sudo /usr/sbin/nginx

