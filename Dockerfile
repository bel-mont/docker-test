FROM node:alpine as builder
# if AWS fails, use this instead
# FROM node:alpine

WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html

#if AWS fails use this instead
# COPY --from=0 /app/build /usr/share/nginx/html

# The nginx image starts nginx automatically, no need to specify a command