# travis_ubuntu
Automatic docker build image for running newer ubuntu SPCs on on travis

e.g. .travis.yml

    ---
    language: python
    python:
        - 3.6
    sudo: required
    services:
      - docker
    before_install:
      - sudo apt-get -qq update
    script: docker run --interactive --rm --privileged --ipc=host --pid=host --net=host
            -v $PWD:$PWD:z -v /run:/run -v /etc/localtime:/etc/localtime
            -v /var/log:/var/log -v /sys/fs/cgroup:/sys/fs/cgroup
            -v /var/run/docker.sock:/var/run/docker.sock
            --workdir $PWD docker.io/cevich/travis_ubuntu:latest ./some_script.sh

[See the docker hub page for details](https://hub.docker.com/r/cevich/travis_ubuntu/)
