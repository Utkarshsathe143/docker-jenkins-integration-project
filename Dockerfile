# Step 1: Specify the base image
FROM nginx:latest

# Step 2: Set the working directory
WORKDIR /usr/share/nginx/html

# Step 3: Copy files from your local directory to the container
COPY . .

# Step 4: Update package lists and install dependencies
RUN apt-get update && apt-get install -y vim && apt-get install -y nginx

# Step 5: Start the nginx server (corrected CMD command)
CMD ["nginx", "-g", "daemon off;"]

#copying the directory
COPY ./index.html /usr/share/nginx/html

 # Step 6: Expose port 80 (for web traffic)
EXPOSE 80
