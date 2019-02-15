FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
ADD https://apt.puppetlabs.com/puppet6-release-xenial.deb /tmp/
RUN dpkg -i /tmp/puppet6-release-xenial.deb; \
apt update; \ 
apt install wget git vim puppet-agent -yq; \
mkdir -p /root/.ssh/
COPY config id_rsa /root/.ssh/
COPY puppet.conf /etc/puppetlabs/puppet/puppet.conf
ENV PATH=$PATH:/opt/puppetlabs/bin/              
CMD puppet agent --no-daemonize
