FROM nginx:alpine

# Create the sites-available and sites-enabled directories
RUN mkdir -p /etc/nginx/sites-available /etc/nginx/sites-enabled

# Copy the nginx configuration file to the sites-available directory
COPY conf/unicorn.tn.conf /etc/nginx/sites-available/unicorn.tn

# Create a symbolic link to the configuration file in the sites-enabled directory
RUN ln -s /etc/nginx/sites-available/unicorn.tn /etc/nginx/sites-enabled/unicorn.tn

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
