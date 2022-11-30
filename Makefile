up:
docker-compose up --build database stac stac_tiler

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
