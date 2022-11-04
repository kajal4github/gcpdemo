# Pull the minimal Ubuntu image
FROM ubuntu

# Install Nginx
RUN apt-get -y update && apt-get -y install nginx

# Adding custom index.html hosted on Github Gist

ADD https://github.com/kajal4github/gcpdemo/blob/e8aac5166153e37549740a6b8f99489d2b47d8b4/index.html /usr/share/nginx/html/




# Adding read permissions to custom index.html

RUN chmod +r /usr/share/nginx/html/index.html

# Expose the port for access
EXPOSE 80/tcp

# Run the Nginx server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
