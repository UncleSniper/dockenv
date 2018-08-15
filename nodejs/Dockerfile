FROM usdo/common:latest
ARG clearAptLists=true

RUN \
	set -ex \
	&& apt-get update \
	&& apt-get install -y gnupg2 \
	&& (curl -sL https://deb.nodesource.com/setup_8.x | bash -) \
	&& apt-get install -y \
		nodejs build-essential apache2 \
		libpq-dev postgresql-client \
	&& (if $clearAptLists; then rm -r /var/lib/apt/lists/*; fi) \
	&& npm install --global \
		cli-color getopts underscore commander window-size node-exceptions \
		bitset mocha chai jsdoc \
		https://github.com/hegemonic/baseline/tarball/master \
		request pg stream-json express hapi date-and-time \
		boom \
	&& echo 'export NODE_PATH=/usr/lib/node_modules' >>/etc/global \
	&& ln -s /home/devel/dev/www /var/www/html/devel

ENTRYPOINT ["gosu", "devel"]
CMD ["zsh", "--login"]
