ARG PYTHON_VERSION=3.11

FROM ghcr.io/vincentsarago/uvicorn-gunicorn:${PYTHON_VERSION}

ENV CURL_CA_BUNDLE /etc/ssl/certs/ca-certificates.crt

COPY cog_tiler /tmp/cog_tiler
RUN pip install /tmp/cog_tiler
RUN rm -rf /tmp/cog_tiler

ENV MODULE_NAME api.src.app
ENV VARIABLE_NAME app
