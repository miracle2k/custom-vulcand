.PHONY: container
./vulcand:
	go build -o vulcand .
./vctl/vctl:
	go build -o vctl/vctl vctl
container:
	docker build -t elsdoerfer/vulcand .
