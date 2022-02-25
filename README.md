# override buildpacks in builder
pack build demo-spring-boot --path ./demo --buildpack ./cnbs-demo-buildpack-jdk --builder cnbs-demo-builder:ubi

# create builder
cd ../builder/
pack builder create cnbs-demo-builder:ubi --config ./builder.toml

# use buildpacks in builder
pack build demo-spring-boot --path ./demo --builder cnbs-demo-builder:ubi