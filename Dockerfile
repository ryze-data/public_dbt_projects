# Start your image with a node base image
FROM ghcr.io/dbt-labs/dbt-core:1.7.11

# The /app directory should act as the main application directory
WORKDIR /app

# # Copy the app package and package-lock.json file
# COPY package*.json ./

# # Copy local directories to the current local directory of our docker image (/app)
COPY ./jaffle_shop /app/jaffle_shop

# # Install node packages, install serve, build the app, and remove dependencies at the end
RUN apt update && \
    apt-get clean && \
    pip3 install dbt-snowflake && \
    rm -rf /var/lib/apt/lists/* 

EXPOSE 8080

# # Start the app using serve command
