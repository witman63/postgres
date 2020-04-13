# Centos based container with default centos 7 postgresql
FROM hub.rinis.cloud/library/centos7:latest
LABEL maintainer="Ron Blom ron.blom@rinis.nl"

ADD pgdg-96.repo /etc/yum.repos.d

RUN yum -y install postgresql96-server \
 postgresql96-contrib && \
 yum clean all && \
 rm -rf /var/cache/yum

EXPOSE 5432

ADD sql/ /tmp
ADD docker-entrypoint.sh /

USER 26

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["postgres"]