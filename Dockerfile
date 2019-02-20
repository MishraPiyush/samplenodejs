FROM node:9-slim
# WORKDIR specifies the directory our 
# application's code will live within
#WORKDIR src/app
# We copy our package.json file to our 
# app directory
#COPY package.json src/app
# We then run npm install to install
# express for our application
RUN npm install
# We then copy the rest of our application
# to the app direcoty
COPY . src/app
# We start our application by calling
# npm start.
CMD ["npm", "start"]
EXPOSE 4200
