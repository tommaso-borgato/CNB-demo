pack builder create cnbs-demo-builder:ubi --config ./builder.toml

pack config default-builder cnbs-demo-builder:ubi

pack config trusted-builders add cnbs-demo-builder:ubi


#pack builder create quay.io/tborgato/cnbs-demo-builder:ubi --config ./builder.toml --publish