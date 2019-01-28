#Docker Container for https://github.com/FritzAndFriends/StreamDeckEmulator/

FROM node:7

#Set working dir for app
WORKDIR /app

#Copy package.json into /app first so subsequent runs do not re-initialize npm.
COPY package.json /app

ENV PATH /app/node_modules/.bin:${PATH}

#Install npm dependencies. 
RUN npm install 

#Copy application files to image.
COPY . /app

#Start the application.
ENTRYPOINT ["npm", "start"]

#Expose the port to host.
EXPOSE 3000

#Metadata
LABEL com.github.fritzandfriends = "streamdeckemulator"
LABEL description="An emulator for the Elgato StreamDeck to test plugins."