up:
	docker-compose --build up stac raster

down:
	docker-compose down

seed:
	docker-compose --build up pypgstac

notebooks:
	docker-compose --build up test-notebooks

deploy:
	@echo "Deploying command not implemented"
