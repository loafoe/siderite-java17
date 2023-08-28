FROM ghcr.io/philips-labs/siderite:v0.16.6 AS siderite

FROM openjdk:17-alpine3.14
COPY --from=siderite /app/siderite /app/siderite

CMD ["/app/siderite","task"]
