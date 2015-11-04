#!/bin/bash

# Make sure current working directory is BnP configuration file location
cd /usr/share/nginx/html/js/config

# Fill cnfiguration file as needed
sed -i "s#SSS_HOST_REST#${BASE_URL}/sss#g" config.json
sed -i "s#OIDC_AUTHORIZATION_URL#${BASE_URL}/o/oauth2/authorize#g" config.json
sed -i "s#OIDC_CLIENT_ID#NOT_IMPLEMENTED_YET#g" config.json
sed -i "s#AFFECT_URL##g" config.json
sed -i "s#HELP_URL##g" config.json
sed -i "s#DISCUSSION_TOOL_URL#${BASE_URL}/discussiontool#g" config.json

