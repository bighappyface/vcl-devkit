build:
	@docker build -t vcl-devkit .
lint:
	@docker run -t -v $(shell pwd):/vcl vcl-devkit /bin/bash -c "varnishd -C -f /vcl/src/main.vcl"
testsingle:
	@docker run -t -v $(shell pwd):/vcl vcl-devkit /bin/bash -c "varnishtest /vcl/src/tests/${TEST}"
testall:
	@docker run -t -v $(shell pwd):/vcl vcl-devkit /bin/bash -c "varnishtest /vcl/src/tests/*.vtc"
run:
	@docker run -d -v $(shell pwd):/vcl --env "VCL_CONFIG=/vcl/src/main.vcl" vcl-devkit
clean:
	@docker rmi vcl-devkit -f
