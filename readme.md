This is the recipe for a docker image to be used for building and pushing AWS lambda code.

It builds from the `amazonlinux` image and adds terraform and node v8 to it, amongst other things.

#### To publish a new version of the image
- Once you are done with the changes (e.g. bump the Terraform version), build the new image locally with

`docker build . -t lambda_terra_deployer`

- Now the image is build, you should be able to see it with `docker image ls` and the output should include the one you
just created, for example:

```
REPOSITORY                               TAG                 IMAGE ID            CREATED              SIZE
lambda_terra_deployer                    latest              53ecb917eeec        About a minute ago   969MB
```

- Now tag the image prefixing it with our dockerhub username and a `<version>` with 

`docker tag lambda_terra_deployer:latest mrdp/lambda_terra_deployer:<version>`

- Login to docker (credentials are stored in 1Password)

`docker login`

- Push this new image to the mrdp account with

`docker push mrdp/lambda_terra_deployer:2`