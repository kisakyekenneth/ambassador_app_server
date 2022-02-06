# Where is this Project comming from
# Node version for the project
FROM node:12 

# Set up the working directory of choice and COPY package.json to current workdir
WORKDIR /app
COPY package.json .

# After we have the package.json file, we need to run npm install
RUN npm install
# Then copy all other files like src from current Directory to WORKDIR
COPY . .

# Now run the command npm start dev
CMD npm run start:dev