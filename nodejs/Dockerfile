FROM usdo/common:latest
ARG clearAptLists=true

RUN \
	set -ex \
	&& apt-get update \
	&& apt-get install -y \
		nodejs \
	&& (if $clearAptLists; then rm -r /var/lib/apt/lists/*; fi)

ENTRYPOINT ["gosu", "devel"]
CMD ["zsh", "--login"]