FROM usdo/common:latest
ARG goVersion=1.11

RUN \
	set -ex \
	&& curl -fsSLo /go.tar.gz https://dl.google.com/go/go${goVersion}.linux-amd64.tar.gz \
	&& tar -C /usr/local -xzf /go.tar.gz \
	&& rm /go.tar.gz \
	&& echo 'export PATH="$PATH:/usr/local/go/bin"' >>/etc/global

ENTRYPOINT ["gosu", "devel"]
CMD ["zsh", "--login"]
