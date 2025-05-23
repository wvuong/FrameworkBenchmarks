FROM oven/bun:1.2

EXPOSE 8080

COPY . .

ENV NODE_ENV production

RUN bun install --production

RUN bun run build

CMD ["bun", "./dist/index.js"]
