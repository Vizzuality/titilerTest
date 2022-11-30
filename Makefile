up:
	docker-compose up --build database stac stac_tiler

down:
	docker-compose down

seed:
	docker-compose  up --build pypgstac

notebooks:
	docker-compose up --build test-notebooks

deploy:
	@echo "Deploying command not implemented"
