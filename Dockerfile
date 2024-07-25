FROM rockylinux:9

RUN yum install -y rpm-build rpm-sign expect pinentry-tty

RUN useradd --create-home --home /home/builder --groups users builder --shell /bin/bash
USER builder
RUN mkdir /home/builder/build
WORKDIR /home/builder/build
