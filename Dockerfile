FROM openshift/redhat-openjdk18-openshift:1.2

USER root

RUN yum install krb5-workstation -y

USER 1001
