IMAGE = schoolscout/custom-mysql-with-ssl:5.6

build:
		docker build -t ${IMAGE} .
