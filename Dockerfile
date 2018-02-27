FROM docker.io/ubuntu:latest
MAINTAINER cevich@redhat.com
ENV container="docker"
ADD ["/Dockerfile", "/pre_installed_debs", "/root/"]
RUN apt-get update -qq && \
    cat /root//pre_installed_debs | xargs apt-get install -qq && \
    apt-get clean
