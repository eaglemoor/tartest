build:
	docker build -t tartest ./

run: build
	docker run --rm -it --name tartest -p 3301:3301 tartest

test:
	tarantool test.lua