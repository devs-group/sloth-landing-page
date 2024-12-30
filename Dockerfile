FROM oven/bun:latest as builder
WORKDIR /app
COPY package.json ./
COPY bun.lockb ./
COPY . ./
RUN bun install
RUN bun run build

FROM oven/bun:slim
WORKDIR /app
COPY --from=builder /app/.output ./
EXPOSE 3000
CMD ["bun", "server/index.mjs"]
