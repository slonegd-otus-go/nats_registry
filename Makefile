all:
	go build -o discovery -mod vendor ./example/address/
	go build -o http -mod vendor ./example/http

clean:
	rm -rf ./vendor

deploy:
	scp discovery root@pm175.dev.sedmax.ru:/tmp
	scp http root@pm175.dev.sedmax.ru:/tmp

vendor:
	go mod vendor