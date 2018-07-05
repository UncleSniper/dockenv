FROM usdo/common:latest
ARG clearAptLists=true

COPY . /

RUN \
	set -ex \
	&& apt-get update \
	&& apt-get install -y \
		openjdk-8-jdk-headless ant \
		ant-contrib libh2-java libldap-java junit \
		libmongodb-java libpostgresql-jdbc-java libmysql-java \
	&& (if $clearAptLists; then rm -r /var/lib/apt/lists/*; fi) \
	&& make -C /home/devel/.vim \
	&& chown -Rh devel:devel /home/devel

ENTRYPOINT ["gosu", "devel"]
CMD ["zsh", "--login"]
