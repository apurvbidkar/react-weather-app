#FROM  node:18-alpine
#WORKDIR /app
#COPY package.json package-lock.json ./
#COPY . .
#RUN npm install
#EXPOSE 3000
#CMD ["npm","run","start"]

FROM nginx
WORKDIR /app
COPY index.html .
RUN rm -rf /usr/share/nginx/index.html
RUN cp index.html  /usr/share/nginx/html
EXPOSE 80
RUN service nginx restart

