ARG PYTHON_VERSION=3.9

FROM ghcr.io/vincentsarago/uvicorn-gunicorn:${PYTHON_VERSION}

ENV CURL_CA_BUNDLE /etc/ssl/certs/ca-certificates.crt

RUN pip install psycopg[binary,pool]

COPY raster /tmp/raster
RUN pip install /tmp/raster
RUN rm -rf /tmp/raster

ENV MODULE_NAME api.src.app
ENV VARIABLE_NAME app
