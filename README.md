# Prismatwopia

A simple boilerplate backend running prisma 2, apollo server, and typescript inside of docker containers. Persisted by postgresql with local volumes, and built for SDL-first development workflow.

## Getting started

Before we begin you must have [Docker][1] and [docker-compose][2] installed locally and functional on your machine. There may be issues mounting the postgres volume locally on Windows machines, so your mileage may vary.

1. `git clone https://github.com/gebhartn/prismatwopia.git`
2. `cd prismatwopia`
2. `docker-compose up --build`
3. `docker exec -it apollo npx prisma migrate save --name init --experimental`
4. `docker exec -it apollo npx prisma migrate up --experimental`

[1]: https://www.docker.com/
[2]: https://docs.docker.com/compose/

Server is running on port 4000, to check if it works, run the following query in the playground on localhost:4000:

`
query {
  info
	}
`

Should return 'Hello World'

