# oc-client
Containerized oc client with oc-mirror plugin


## How to run

- Usage of the `oc-client` container-base-image on your host:
```bash
alias oc-client='podman run --privileged -v /apps/kubeconfig:/root/.kube/config:z quay.io/midu/oc-client:v4.16 oc'
```

- `oc` version used inside the container:
```bash
$ oc-client version
Client Version: 4.16.0-rc.4
Kustomize Version: v5.0.4-0.20230601165947-6ce0bf390ce3
```

- `oc-mirror` version used inside the container:
```bash
$ oc-client mirror version --output=yaml
clientVersion:
  buildDate: "2024-06-06T20:40:55Z"
  compiler: gc
  gitCommit: c6cad796b9e31d2009b5b2965a75fe1a53d3f3da
  gitTreeState: clean
  gitVersion: 4.16.0-202406061206.p0.gc6cad79.assembly.stream.el9-c6cad79
  goVersion: go1.21.9 (Red Hat 1.21.9-1.module+el8.10.0+21671+b35c3b78) X:strictfipsruntime
  major: ""
  minor: ""
  platform: linux/amd64
```
