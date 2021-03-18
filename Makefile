build:
	docker build -t terraform:dev .

run:
	docker run -d -it --rm \
	-v ${PWD}/projects:/terraform-projects \
	-v "/run/docker.sock:/run/docker.sock" \
	-v "/usr/bin/docker:/usr/bin/docker" \
	--name terraform-playground terraform:dev /bin/bash

	sudo chmod 666 /var/run/docker.sock

playground:
	docker exec -it terraform-playground /bin/bash

stop:
	docker stop terraform-playground