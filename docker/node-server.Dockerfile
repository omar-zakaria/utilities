FROM node:20.10.0
WORKDIR /app


COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install

COPY . .

#ENV NODE_ENV=development

CMD ["npm", "start"]

# docker build --tag node-server .
# docker run --publish 3005:3005 node-server