docker-compose build
docker-compose run --rm app sh -c 'npx create-next-app sample-app --typescript'
docker-compose up
