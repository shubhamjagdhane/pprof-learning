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

memprofile:
	go test -bench . -benchmem -memprofile prof.mem

pprofcpu:
	go tool pprof stats.test prof.cpu

pprofmem:
	go tool pprof -alloc_objects stats.test prof.mem
