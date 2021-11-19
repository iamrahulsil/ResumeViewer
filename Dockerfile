FROM centos:latest

MAINTAINER RAHUL SIL <rahul.official.150@gmail.com>

RUN yum install evince PackageKit-gtk3-module libcanberra-gtk3 dbus-x11 -y && \
    dbus-uuidgen --ensure

COPY RahulSil.pdf  .

ENTRYPOINT ["evince"]

CMD ["RahulSil.pdf"]
