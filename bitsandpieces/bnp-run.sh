#!/bin/bash

# Replace variables if needed
if [ ! -f bnp-replacements-made.lock ];
then
	source ~/bin/bnp-replace-variables.sh
	touch bnp-replacements-made.lock
fi

# Start nginx
sudo /usr/sbin/nginx

