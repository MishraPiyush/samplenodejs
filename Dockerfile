FROM node:8
# WORKDIR specifies the directory our 
# application's code will live within
WORKDIR /app
# We copy our package.json file to our 
# app directory
COPY package.json /app
# We then run npm install to install
# express for our application
#RUN ping 8.8.8.8 -c 2
#RUN echo "nameserver 8.8.8.8" > /etc/resolv.conf
#RUN npm config delete proxy
#RUN npm config set registry 'http://registry.npmjs.org/'
RUN npm install --verbose
# We then copy the rest of our application
# to the app direcoty
COPY . /app
# We start our application by calling
# npm start.
CMD ["npm", "start"]
EXPOSE 4200
