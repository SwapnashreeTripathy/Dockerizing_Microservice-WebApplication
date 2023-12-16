# Dockerize HTML-page With NGINX Webserver & Push it to AWS ECR
In this project we are using Docker and to containerize a HTML web page, using Nginx as the web server and Upload your Image to AWS ECR(Amazon Elastic Container Registry).
# Objective:
1. [Creation and Configuration of an EC2 Instance](#Creation and Configuration of an EC2 Instance)
3. Create a HTML webpage and Nginx File Configuration to establish Reverse Proxy.
4. Write an Dockerfile to create an Image.
5. Build Docker-Compose file to run the Container.
6. Create an Public AWS ECR and Push your image into it.<br>

## Creation and Configuration of an EC2 Instance
- Create and Lunch an EC2 Instance
![image](https://github.com/SwapnashreeTripathy/Dockerizing_custom_webserver/assets/139486876/e0ac3f8f-fea2-4726-866b-8f8cb3939733)

- Install Nginx and Docker on your AWS EC2 machine.
   ```
      sudo apt-get update -y
      sudo apt install nginx -y
      sudo systemctl status nginx
      sudo apt install docker.io -y
      docker --version
   ```
  ![image](https://github.com/SwapnashreeTripathy/Dockerizing_custom_webserver/assets/139486876/6bdf42c6-9884-45af-bfdd-f75d3a51e505)
  
## Create a HTML webpage and Nginx File Configuration to establish Reverse Proxy
- Create a plain HTML page named `index.html`
   ![image](https://github.com/SwapnashreeTripathy/Dockerizing_custom_webserver/assets/139486876/8732a06f-b1ca-4bd1-86c8-a686bc551061)
- Create an Nginx configuration file named `nginx.conf` that serves the `index.html` page.
- Configure Nginx to listen on port 80. 
```
#-----------------------------nginx.conf-------------------------
server {
    listen 80;
    server_name _;
    location / {
        root /usr/share/nginx/html;
        index index.html;
    }
}
#------------------------------------------------------------------
```

 
