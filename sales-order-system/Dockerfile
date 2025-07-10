FROM node:16-alpine AS build
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

FROM httpd:2.4
COPY --from=build /app/build /usr/local/apache2/htdocs/
RUN sed -i 's/^Listen80/Listen8080/' /usr/local/apache2/conf/httpd.conf

EXPOSE 8080

CMD ["httpd", "-D", "FOREGROUND"]
