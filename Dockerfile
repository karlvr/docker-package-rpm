FROM centos

RUN yum install -y rpm-build rpm-sign expect

RUN useradd --create-home --home /home/builder --groups users builder --shell /bin/bash
USER builder
RUN mkdir /home/builder/build
WORKDIR /home/builder/build
