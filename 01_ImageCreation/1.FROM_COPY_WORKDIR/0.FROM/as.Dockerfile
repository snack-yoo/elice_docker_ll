FROM ubuntu AS a-stage
RUN echo "Hello A Stage" && touch /app.js

FROM ubuntu AS b-stage
COPY --from=a-stage /app.js /a-app.js
RUN echo "Hello B Stage"

FROM ubuntu AS c-stage
RUN echo "Hello C Stage"
