FROM ghcr.io/philips-labs/siderite:v0.15.1 AS siderite

FROM openjdk:18-alpine3.14
COPY --from=siderite /app/siderite /app/siderite

CMD ["/app/siderite","task"]
