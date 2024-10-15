run:
	go run main.go

wrk:
	go-wrk -d 5 http://localhost:9090/hello

# pprof page: http://localhost:9090/debug/pprof


pprof:
	go tool pprof --seconds 5 http://localhost:9090/debug/pprof/profile

go-torch:
	go-torch  --seconds 5 http://localhost:9090/debug/pprof/profile

benchmem:
	go test -bench . -benchmem
cpuprofile:
	go test -bench . -benchmem -cpuprofile prof.cpu

pprofcpu:
	go tool pprof stats.test prof.cpu
