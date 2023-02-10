FROM philipslabs/siderite:v0.12.2 AS siderite

FROM openjdk:17-alpine3.14
COPY --from=siderite /app/siderite /app/siderite
