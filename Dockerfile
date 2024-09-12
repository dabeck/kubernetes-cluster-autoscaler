FROM gcr.io/distroless/static:nonroot

COPY out/cluster-autoscaler /bin/cluster-autoscaler

ENTRYPOINT [ "cluster-autoscaler" ]