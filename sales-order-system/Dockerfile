FROM node:16-alpine AS build
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

FROM httpd:2.4
RUN ls -l /usr/local/apache2/conf/ && cat /usr/local/apache2/conf/httpd.conf | grep Listen
RUN sed -i 's/^Listen 80/Listen 8085/' /usr/local/apache2/conf/httpd.conf
RUN chmod -R 777 /usr/local/apache2/logs
COPY --from=build /app/build /usr/local/apache2/htdocs/
EXPOSE 8085






