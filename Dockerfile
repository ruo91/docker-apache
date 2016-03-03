#
# Dockerfile - Apache
#
FROM ubuntu:15.10
MAINTAINER Yongbok Kim <ruo91@yongbok.net>

# Apache
RUN apt-get update && apt-get install -y apache2 supervisor

# Supervisor
RUN mkdir -p /var/log/supervisor
ADD conf/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Port
EXPOSE 80

# Daemon
CMD ["/usr/bin/supervisord"]
