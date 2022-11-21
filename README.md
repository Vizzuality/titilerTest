## titilerTest


### STAC -> [/src/eoapi/stac](/services/stac)

A custom version of [stac-fastapi](https://github.com/stac-utils/stac-fastapi), adding a `TiTilerExtension` and a simple `Search Viewer`.

### Raster -> [/src/eoapi/raster](/services/raster)

The dynamic tiler deployed within eoAPI is built on top of [titiler-pgstac](https://github.com/stac-utils/titiler-pgstac) and [pgstac](https://github.com/stac-utils/pgstac). It enables large scale mosaic based on results of STAC searches queries:

- Full **titiler-pgstac** implementation
- base64 encoded STAC item support for `STAC` **Proxy**

<p align="center">
  <img src="https://user-images.githubusercontent.com/10407788/129632282-f71e9f45-264c-4882-af28-7062c4e56f25.png"/>
  <p align="center">TiTiler-PgSTAC workflow</p>
</p>

## Local

You can launch the APIs locally using docker. This will start 3 services: database, api.stac, api.raster

``` bash
make up
```

``` bash
docker-compose build
docker-compose up stac raster
```

## Project structure

```
 ├──demo/                  - items/collections and notebook
 infrastructure/           - terraform infrastructure setup
 └──services/
    ├── raster/            - API raster Application package
    └── stac/              - API stac Application package
```