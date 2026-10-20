# n8n 2.x container - lightweight alpine
FROM node:18-alpine3.20

# Recommended non‑root user
RUN adduser -D -u 1000 n8n

# Install n8n globally
RUN npm i -g n8n@^2.0.0

# Expose port
EXPOSE 5678

# Entry‑point – always bind to 0.0.0.0 so Render can reach it
USER n8n
CMD ["n8n", "start", "--host", "0.0.0.0", "--port", "5678"]
