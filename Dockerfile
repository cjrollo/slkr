# Outcome: Run Angular in a container
# Build it: docker build --rm -t rollo/slkr:alpine .
# Run in the background:
#   docker run -d --name slkr -P rollo/slkr:alpine
# Run interactively:
#   docker run --rm -it --name slkr -P rollo/slkr:alpine ash
# Run without the default app:
#   docker run -d --name slkr -P -v $(pwd)/app://usr/src/app rollo/slkr:alpine


# Base docker image
FROM node:alpine
# Me ;-)
MAINTAINER rollo

# Install any dependencies
#apk update -y && \
#apk add -y \

# Create a directory where our app will be placed
RUN mkdir -p /usr/src/app

# Change directory so that our commands run inside this new directory
WORKDIR /usr/src/app

# Copy dependency definitions
COPY package.json /usr/src/app

# Install dependecies
RUN npm install

# Get all the code needed to run the app
COPY . /usr/src/app

# Expose the port the app runs in
EXPOSE 3000

# Serve the app
CMD ["npm", "start"]
