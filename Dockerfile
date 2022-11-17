FROM vault AS kms
RUN mkdir -p /app
COPY healthcheck /app/healthcheck
RUN chmod +x /app/healthcheck
HEALTHCHECK --interval=5s --timeout=2s --start-period=5s --retries=5 CMD [ "/app/healthcheck" ]
