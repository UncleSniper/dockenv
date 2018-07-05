FROM usdo/common:latest
ARG clearAptLists=true

RUN \
	set -ex \
	&& apt-get update \
	&& apt-get install -y \
		clisp sbcl \
	&& (if $clearAptLists; then rm -r /var/lib/apt/lists/*; fi) \
	&& wget 'https://www.vim.org/scripts/download_script.php?src_id=25041' -O /tmp/slimv.zip \
	&& unzip /tmp/slimv.zip -d /usr/share/vim/vimfiles \
	&& rm /tmp/slimv.zip

ENTRYPOINT ["gosu", "devel"]
CMD ["zsh", "--login"]
