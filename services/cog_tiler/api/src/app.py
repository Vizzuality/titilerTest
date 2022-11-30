from fastapi import FastAPI
from titiler.application.routers.cog import cog
from titiler.core.errors import DEFAULT_STATUS_CODES, add_exception_handlers

app = FastAPI()
app.include_router(cog.router, prefix="/cog", tags=["Cloud Optimized GeoTIFF"])

add_exception_handlers(app, DEFAULT_STATUS_CODES)

@app.get("/healthz", description="Health Check", tags=["Health Check"])
def ping():
    """Health check."""
    return {"ping": "pong"}
