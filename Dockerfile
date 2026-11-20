# Static site served by nginx: no runtime dependencies to install.
FROM nginx:1.27-alpine

COPY index.html script.js /usr/share/nginx/html/
COPY css /usr/share/nginx/html/css
COPY images /usr/share/nginx/html/images

EXPOSE 80
