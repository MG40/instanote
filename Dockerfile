FROM node:19-slim
COPY . .
RUN chgrp -R 0 /public && \
    chmod -R g=u /public
RUN npm install
CMD [ "node", "index.js" ]
