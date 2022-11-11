.PHONY: test
test: 
	@go test -race -covermode=atomic -v -coverprofile=coverage.txt $(extend) ./... ;

.PHONY: benchmark
benchmark: 
	@go test -bench=. -run=^Benchmark ./...;

.PHONY: tool
tool:
	@go install gotest.tools/gotestsum@latest