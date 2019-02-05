FROM python:2-alpine

WORKDIR /usr/src/app

RUN apk add --no-cache git libxslt-dev libc-dev gcc \
    && git clone https://bitbucket.org/LaNMaSteR53/recon-ng.git . \
    && git checkout v4.9.5 \
    && pip install --no-cache-dir -r REQUIREMENTS \
    && apk del libc-dev gcc git

ENTRYPOINT ["python","/usr/src/app/recon-ng"]
