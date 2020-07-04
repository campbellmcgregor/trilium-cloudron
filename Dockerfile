FROM cloudron/base:2.0.0@sha256:f9fea80513aa7c92fe2e7bf3978b54c8ac5222f47a9a32a7f8833edf0eb5a4f4

EXPOSE 8080
ENV VERSION="0.43.1"
ENV TRILIUM_DATA_DIR=/app/data


WORKDIR /app/code

RUN wget https://github.com/zadam/trilium/releases/download/v${VERSION}/trilium-linux-x64-server-${VERSION}.tar.xz && \
    tar -xvf trilium-linux-x64-server-0.43.1.tar.xz && \
    rm -f trilium-linux-x64-server-0.43.1.tar.xz

RUN mkdir -p /app/pkg /app/data && \
    chown cloudron:cloudron /app/data 


COPY start.sh /app/pkg

RUN chmod +x /app/pkg/start.sh

CMD [ "/app/pkg/start.sh" ]