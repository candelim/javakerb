FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift

ARG MYUSER
ARG MYSECRET

USER root

RUN subscription-manager register --username $MYUSER --password $MYSECRET --force && subscription-manager attach --auto && yum install krb5-workstation -y

USER 1001
