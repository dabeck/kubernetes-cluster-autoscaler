# Kubernetes Cluster Autoscaler

[![Go Report Card](https://goreportcard.com/badge/github.com/dabeck/kubernetes-cluster-autoscaler)](https://goreportcard.com/report/github.com/dabeck/kubernetes-cluster-autoscaler)

## Developer Requirements

- [Kubernetes](https://kubernetes.io/) version 1.19.x
- [Go](https://golang.org/doc/install) version 1.15.x (to build the source and develop plugins)

## Building from source

Build Kubernetes Cluster Autoscaler from the source

```sh
go build -o bin/autoscaler cmd/main.go
```

Take a copy of `conf.yml-sample` as `conf.yml`. Fill all the required data fields.

Configure the Kubectl. This look for the kube config file in the default path `~/.kube/config` or you can run as a pon in a Kubernetes cluster.

```sh
.
├── autoscaler
├── conf.yml
└── plugin
    └── AWS.so
```

Copy the build plugin to `./bin/plugin` directory. Change the `CloudType` in conf.yml to `AWS`. This will load and configure the plugin.

## TODO

- Support cloud_init aka user_data
- Improve scaling decisions
- Update dependencies
