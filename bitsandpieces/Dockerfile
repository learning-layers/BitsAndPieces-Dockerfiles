FROM learninglayers/base
MAINTAINER Pjotr Savitski <pjotr.savitski [at] tlu.ee>

# Install Nginx
RUN apt-get update \
  && apt-get -qqy -no-install-recommends install nginx unzip sed

# Download BitsAndPieces
RUN wget https://github.com/learning-layers/BitsAndPieces/archive/v4.0.1.zip \
  && unzip v4.0.1.zip "BitsAndPieces-4.0.1/*" -d "/var/www"

# Configure accorging to needs
sed -i "s#SSS_HOST_REST#${BASE_URL}/sss#g" /var/www/js/config/config.json
sed -i "s#OIDC_AUTHORIZATION_URL#${BASE_URL}/o/oauth2/authorize#g" /var/www/js/config/config.json
sed -i "s#OIDC_CLIENT_ID#NOT_IMPLEMENTED_YET#g" /var/www/js/config/config.json
sed -i "s#AFFECT_URL##g" /var/www/js/config/config.json
#sed -i "s#HELP_URL#${BASE_URL}/sss#g" /var/www/js/config/config.json
sed -i "s#DISCUSSION_TOOL_URL#${BASE_URL}/discussiontool#g" /var/www/js/config/config.json

EXPOSE 80
