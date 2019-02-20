#FROM node:9.6.1
FROM node:alpine
# WORKDIR specifies the directory our 
# application's code will live within
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
# We copy our package.json file to our 
# app directory
COPY package.json /usr/src/app/package.json
# We then run npm install to install
# express for our application
#RUN ping 8.8.8.8 -c 2
#RUN echo "nameserver 8.8.8.8" > /etc/resolv.conf
#RUN npm config delete proxy
#RUN npm config set registry 'http://registry.npmjs.org/'
#RUN npm config set proxy http://127.0.0.1:8001
#RUN npm config set https-proxy http://[Host]:[Port]

RUN npm install --verbose
#RUN npm install -g 
# We then copy the rest of our application
# to the app direcoty
COPY . /usr/src/app
# We start our application by calling
# npm start.
CMD ["npm", "start"]
EXPOSE 4200
