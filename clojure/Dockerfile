FROM usdo/java:latest
ARG clearAptLists=true

RUN \
	set -ex \
	&& apt-get update \
	&& apt-get install -y \
		clojure leiningen \
		libat-at-clojure libbeckon-clojure libbultitude-clojure \
		libcheshire-clojure libclasslojure-clojure libclj-digest-clojure \
		libclj-http-clojure libclj-stacktrace-clojure libclj-time-clojure \
		libclj-tuple-clojure libclj-yaml-clojure \
		libcomplete-clojure libcore-async-clojure libcore-cache-clojure \
		libcore-match-clojure libcore-memoize-clojure libcpath-clojure \
		libcrypto-random-clojure libdata-xml-clojure libdynapath-clojure \
		libhiccup-clojure libhoneysql-clojure libinstaparse-clojure \
		libjava-classpath-clojure libjava-jdbc-clojure libjava-jmx-clojure \
		libkitchensink-clojure liblazymap-clojure \
		libmath-combinatorics-clojure libmath-numeric-tower-clojure \
		libmedley-clojure libpantomime-clojure \
		libpotemkin-clojure libprismatic-plumbing-clojure \
		libprismatic-schema-clojure libpuppetlabs-i18n-clojure \
		libquoin-clojure libraynes-fs-clojure libregex-clojure \
		libriddley-clojure libscout-clojure libsjacket-clojure \
		libslingshot-clojure libspec-alpha-clojure libspecter-clojure \
		libssl-utils-clojure libstockpile-clojure libtigris-clojure \
		libtools-cli-clojure libtools-logging-clojure \
		libtools-macro-clojure libtools-namespace-clojure \
		libtools-trace-clojure libtypesafe-config-clojure \
	&& (if $clearAptLists; then rm -r /var/lib/apt/lists/*; fi)

ENTRYPOINT ["gosu", "devel"]
CMD ["zsh", "--login"]
