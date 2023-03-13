FROM node:18-alpine

WORKDIR /app

ENV NEXT_TELEMETRY_DISABLED 1
ENV NODE_ENV production

RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nextjs

COPY .next/standalone ./

USER nextjs

EXPOSE 3000

CMD ["node", "server.js"]