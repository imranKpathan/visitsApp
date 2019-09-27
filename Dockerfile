# Specify The Base Image
FROM node:alpine

# Specify Working Directory Inside the Container

WORKDIR '/app'

# Specify set-up commands and install dependencies
COPY package.json .
RUN npm install
COPY . .

# Specify Default Start-up Command
CMD ["npm", "start"]