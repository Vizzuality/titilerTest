up:
	docker-compose up --build database stac raster
up-cogs:
	docker-compose up --build cog-tiler

down:
	docker-compose down

seed:
	docker-compose  up --build pypgstac

notebooks:
	docker-compose up --build test-notebooks

deploy:
	@echo "Deploying command not implemented"
