# override buildpacks in builder
pack build demo-spring-boot --path ./demo --buildpack ./cnbs-demo-buildpack-jdk --builder cnbs-demo-builder:ubi

# create builder
cd ../builder/
pack builder create cnbs-demo-builder:ubi --config ./builder.toml

# use buildpacks in builder
pack build demo-spring-boot --path ./demo --builder cnbs-demo-builder:ubi

# docker socker
systemctl enable --user podman.socket
systemctl start --user podman.socket
sudo ln -f -s $(podman info -f "{{.Host.RemoteSocket.Path}}") /var/run/docker.sock

# development
```
pushd builder
pack builder create cnbs-demo-builder:ubi --config ./builder.toml
popd
pack build demo-spring-boot --path ./demo --builder cnbs-demo-builder:ubi
```

# run
podman run -p 8080:8080 -it --rm demo-spring-boot