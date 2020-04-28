module github.com/grafana/agent

go 1.12

require (
	github.com/cortexproject/cortex v1.0.1-0.20200409122148-163437e76cad
	github.com/go-kit/kit v0.10.0
	github.com/golang/protobuf v1.3.5 // indirect
	github.com/gorilla/mux v1.7.3
	github.com/oklog/run v1.1.0
	github.com/pkg/errors v0.9.1
	github.com/prometheus/client_golang v1.5.1
	github.com/prometheus/common v0.9.1
	github.com/prometheus/procfs v0.0.11 // indirect
	github.com/prometheus/prometheus v1.8.2-0.20200213233353-b90be6f32a33
	github.com/stretchr/testify v1.4.0
	github.com/weaveworks/common v0.0.0-20200310113808-2708ba4e60a4
	go.uber.org/atomic v1.5.0
	golang.org/x/net v0.0.0-20200324143707-d3edc9973b7e // indirect
	golang.org/x/sys v0.0.0-20200406155108-e3b113bbe6a4 // indirect
	gopkg.in/yaml.v2 v2.2.8
)

// Needed for Cortex's dependencies to work properly.
replace (
	google.golang.org/api => google.golang.org/api v0.14.0
	google.golang.org/grpc => google.golang.org/grpc v1.25.1
)

// Replace directives from Prometheus
replace k8s.io/klog => github.com/simonpasquier/klog-gokit v0.1.0

// Replace directives from Cortex
replace (
	git.apache.org/thrift.git => github.com/apache/thrift v0.0.0-20180902110319-2566ecd5d999
	github.com/Azure/azure-sdk-for-go => github.com/Azure/azure-sdk-for-go v36.2.0+incompatible
	github.com/Azure/go-autorest => github.com/Azure/go-autorest v13.3.0+incompatible
	k8s.io/client-go => k8s.io/client-go v0.0.0-20190620085101-78d2af792bab
)

// Temporarily use a fork for memory improvements (see #5)
replace github.com/prometheus/prometheus => github.com/grafana/prometheus v1.8.2-0.20200330171229-fc3d977ea463
