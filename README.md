# Build the Docker image (leave out 'tag' to build 'latest' only):

docker image build -t hub.rinis.cloud/iris/postgresql[:tag] .

# To persist the database, you need to map a volume to /var/lib/pgsql/data in the container; this volume can be a host volume or some other volume source.
# The jentratadb.postgres.tar.gz contains a database provisiond with the ebms and as2 databases for jentrata.
# Run container with:

docker container run -d -v <path_to_psql_data>:/var/lib/pgsql/data -p 5432:5432 hub.rinis.cloud/iris/postgresql

# Run container interactively:

docker container run -it hub.rinis.cloud/iris/postgresql bash

# Push image:

docker push hub.rinis.cloud/iris/postgresql

# Deploy to Kubernetes using Helm:

-	Edit <chart_directory>/Chart.yaml: Change 'appVersion' to the tag of the image that you want to deploy;
	for developers, this should be a locally built image tag.
-	Deploy the application.

helm install postgresql ./postgresql-chart
