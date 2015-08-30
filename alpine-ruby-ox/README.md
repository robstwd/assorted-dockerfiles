# assorted-dockerfiles
A collection of my experiments with docker.

And mostly plagiarised, at that.

#### Building image
This image was built from the dockerfile with:
`docker build -t alpine-ruby-ox .`

#### Running container
Open a container interactively so that the test file can be run:
`docker run --rm -it --name="alp-ruby-ox" alpine-ruby-ox /bin/sh`
Then at the prompt issue
`./ox-test.tb`

