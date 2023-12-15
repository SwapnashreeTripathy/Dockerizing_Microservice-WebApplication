FROM nginx:latest
# Copy HTML file to serve
COPY index.html /usr/share/nginx/html/index.html
COPY ./reverseproxy /etc/nginx/sites-available/reverseproxy
# Expose port 80
EXPOSE 80
