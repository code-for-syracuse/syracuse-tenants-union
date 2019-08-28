# @author: cappetta
# @comments: create a bootstrap squarespace-server setup locally using a free account
# Connectivity Details

#  Username
#      <never commit this>
#  Password
#      <never commit this>
#  SFTP Hostname
#      dev.squarespace.com
#  SFTP Port
#      2030
#  GIT Repository
#    https://xxxxxx.squarespace.com/template.git

FROM node:10
WORKDIR /var/www/html
COPY * ./
RUN npm install --unsafe-perm=true --allow-root && \
    npm install -g --unsafe-perm=true --allow-root && \
    npm install -g -g --unsafe-perm=true --allow-root @squarespace/server && \
    npm install -g --unsafe-perm=true --allow-root --save-dev @squarespace/toolbelt
EXPOSE 80
ENTRYPOINT squarespace-server https://xxxxxx.squarespace.com --host 0.0.0.0 --verbose -A -p 80 --auth
