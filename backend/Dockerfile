FROM node:20
EXPOSE 8080
ENV DB_HOST=mysql
RUN useradd expense
RUN mkdir /opt/server
RUN chown expense:expense -R /opt/server
WORKDIR /opt/server
COPY package.json .
COPY *.js .
RUN npm install
CMD [ "node","index.js" ]

#docker build -t backend:v1.0 .
#docker run -d -p 8080:8080 --name backend --network expense backend:v1.0 Expose
#docker run -d --name backend --network expense backend:v1.0 not expose work in container