# alpine-ssh-fixversion
A simple docker image running on [alpine](http://www.alpinelinux.org/) with a particular version of ssh

#### Purpose
This was created as an experiment to deal with teh situation where a Arch user reported needing to use an old version of ssh as the server they were ssh'ing into was still using the deprecated DSA keys. The user resolved their issue by following the guide on the OpenSSH website re [legacy ssh implementations](http://www.openssh.com/legacy.html). Anyway, I just wanted to continue the exercise.

#### Building image
Image size: 13MB

This image was built from the dockerfile with:
```
docker build -t alpine-ssh-fixversion .
```

#### Running container
In order to make use of the host PC's ssh config files, these files are mounted via the volume command
```
$ docker run --rm -it \
    -v $HOME/.ssh/known_hosts:/home/user/.ssh/known_hosts \
    -v $HOME/.ssh/config:/home/user/.ssh/config \
    alpine-ssh-fixversion /bin/sh
```

Then at the prompt issue the usual ssh command via the config file: 
```
ssh host-name-1
```