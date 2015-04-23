.PHONY: container
./vulcand:
	go build -o vulcand .
./vctl/vctl:
	go build -o vctl/vctl ./vctl/
container:
	GOOS=linux go build -o vulcand .
	GOOS=linux go build -o vctl/vctl ./vctl/
	docker build -t elsdoerfer/vulcand .
	docker push elsdoerfer/vulcand
