FROM ubuntu:latest
ARG clearAptLists=true

RUN \
	set -ex \
	&& sed -i 's@^path-exclude=/usr/share/man/@#&@' /etc/dpkg/dpkg.cfg.d/excludes \
	&& apt-get update \
	&& apt-get install -y \
		man manpages sudo \
		vim zsh make git \
		wget curl \
	&& (if $clearAptLists; then rm -r /var/lib/apt/lists/*; fi) \
	&& useradd -MU -s/usr/bin/zsh devel \
	&& mkdir -pm0755 /home/devel \
	&& echo 'devel ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers
