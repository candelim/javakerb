FROM registry.redhat.io/redhat-openjdk-18/openjdk18-openshift

USER root

RUN yum install krb5-workstation -y

USER 1001
