# libvirt-terraform

## Run Rancher

```
docker run -d --name rancher-server  -v ${PWD}/volume:/var/lib/rancher --restart=unless-stopped -p 80:80 -p 443:443 --privileged rancher/rancher
```

docker logs  9058b9d32f2670e9b12c2784287cbb8ed3bfebe51bfad4a98dfb81b598bca9bf  2>&1 | grep "Bootstrap Password:"