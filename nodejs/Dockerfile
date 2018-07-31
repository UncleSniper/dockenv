FROM usdo/common:latest
ARG clearAptLists=true

RUN \
	set -ex \
	&& apt-get update \
	&& apt-get install -y gnupg2 \
	&& (curl -sL https://deb.nodesource.com/setup_8.x | bash -) \
	&& apt-get install -y \
		nodejs build-essential \
	&& (if $clearAptLists; then rm -r /var/lib/apt/lists/*; fi) \
	&& npm install --global \
		cli-color getopts underscore commander window-size node-exceptions \
		bitset mocha chai \
	&& echo 'export NODE_PATH=/usr/lib/node_modules' >>/etc/global

ENTRYPOINT ["gosu", "devel"]
CMD ["zsh", "--login"]
