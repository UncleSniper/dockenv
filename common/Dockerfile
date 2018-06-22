FROM ubuntu:latest
ARG clearAptLists=true

COPY . /

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
	&& git clone https://github.com/UncleSniper/vim-scripts.git /home/devel/vim-scripts \
	&& /home/devel/vim-scripts/install.sh /home/devel \
	&& rm -r /home/devel/vim-scripts/.git /home/devel/.vim/bundle/*/.git \
	&& chown -R devel:devel /home/devel \
	&& echo 'devel ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers \
	&& install -oroot -groot /home/devel/.zshrc /root/.zshrc \
