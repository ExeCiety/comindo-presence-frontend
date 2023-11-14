FROM node:18.18.2-alpine

WORKDIR /app

COPY . /app
RUN npm install -g pnpm
RUN pnpm install

EXPOSE 3001
CMD ["pnpm", "run", "dev"]
