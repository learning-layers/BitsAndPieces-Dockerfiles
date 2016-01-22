#!/bin/bash

# Make sure current working directory is BnP configuration file location
cd /usr/share/nginx/html/js/config

# Fill cnfiguration file as needed
sed -i "s#SSS_HOST_REST#${LAYERS_API_URI}sss.adapter.rest.v2/#g" config.json
sed -i "s#OIDC_AUTHORIZATION_URL#${LAYERS_API_URI}o/oauth2/authorize#g" config.json
sed -i "s#OIDC_CLIENT_ID#${BITSANDPIECES_OIDC_CLIENT_ID}#g" config.json
sed -i "s#AFFECT_URL##g" config.json
sed -i "s#HELP_URL##g" config.json
sed -i "s#DISCUSSION_TOOL_URL#${LAYERS_API_URI}discussiontool/#g" config.json

