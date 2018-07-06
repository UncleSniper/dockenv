FROM ubuntu:latest
ARG clearAptLists=true

COPY . /

RUN \
	set -ex \
	&& sed -i 's@^path-exclude=/usr/share/man/@#&@' /etc/dpkg/dpkg.cfg.d/excludes \
	&& apt-get update \
	&& apt-get install -y \
		man manpages sudo gosu python3 \
		vim zsh make git \
		wget curl unzip screen \
	&& (if $clearAptLists; then rm -r /var/lib/apt/lists/*; fi) \
	&& useradd -MU -s/usr/bin/zsh devel \
	&& git clone https://github.com/UncleSniper/vim-scripts.git /home/devel/vim-scripts \
	&& /home/devel/vim-scripts/install.sh /home/devel \
	&& rm -r /home/devel/vim-scripts/.git /home/devel/.vim/bundle/*/.git \
	&& ln -s /home/devel/dev/.devlocal.vim /home/devel/.vim/devlocal.vim \
	&& echo 'runtime devlocal.vim' >>/home/devel/.vimrc \
	&& ln -s dev/.gitconfig /home/devel/.gitconfig \
	&& ln -s dev/.git-credentials /home/devel/.git-credentials \
	&& chown -Rh devel:devel /home/devel \
	&& echo 'devel ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers \
	&& install -oroot -groot /home/devel/.zshrc /root/.zshrc \
	&& chsh -s/usr/bin/zsh root \
	&& chmod 04755 /usr/sbin/gosu \
	&& ln -s /home/devel/vim-scripts/tools/vimant.py /scripts/vimant \
	&& chown -Rh devel:devel /scripts \
	&& ln -s python3 /usr/bin/python

ENTRYPOINT ["gosu", "devel"]
CMD ["zsh", "--login"]
