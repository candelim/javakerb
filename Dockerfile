FROM openshift/redhat-openjdk18-openshift:1.2

USER root

RUN subscription-manager register --username $MYUSER --password $MYSECRET --force && subscription-manager attach --auto && yum install krb5-workstation -y

USER 1001
