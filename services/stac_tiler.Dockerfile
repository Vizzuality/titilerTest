ARG PYTHON_VERSION=3.9

FROM ghcr.io/vincentsarago/uvicorn-gunicorn:${PYTHON_VERSION}

ENV CURL_CA_BUNDLE /etc/ssl/certs/ca-certificates.crt

RUN pip install psycopg[binary,pool]

COPY stac_tiler /tmp/stac_tiler
RUN pip install /tmp/stac_tiler
RUN rm -rf /tmp/stac_tiler

ENV MODULE_NAME api.src.app
ENV VARIABLE_NAME app
