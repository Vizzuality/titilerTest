ARG PYTHON_VERSION=3.9

FROM ghcr.io/vincentsarago/uvicorn-gunicorn:${PYTHON_VERSION}

ENV CURL_CA_BUNDLE /etc/ssl/certs/ca-certificates.crt

COPY services/stac /tmp/stac
RUN pip install /tmp/stac
RUN rm -rf /tmp/stac

ENV MODULE_NAME test.stac.api
ENV VARIABLE_NAME app
