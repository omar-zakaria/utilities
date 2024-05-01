# Build frontend stage
FROM node:20.10.0 as build-frontend-stage
WORKDIR /app

COPY ./app/package.json package.json
COPY ./app/package-lock.json package-lock.json

RUN npm install
COPY ./app .

RUN npm run build

# Build backend
FROM node:20.10.0
WORKDIR /app

COPY server/package.json package.json
COPY server/package-lock.json package-lock.json

RUN npm install

COPY ./server .


# Copy frontend build to server
COPY --from=build-frontend-stage /app/dist /app/public

CMD ["npm", "start"]
