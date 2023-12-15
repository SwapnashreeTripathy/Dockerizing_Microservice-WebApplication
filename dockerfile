FROM nginx:latest
# Copy HTML file to serve
COPY index.html /usr/share/nginx/html/index.html
COPY ./nginx.conf /etc/nginx/sites-available/
# Expose port 80
EXPOSE 80
