FROM debian:stretch-slim

RUN set -ex \
	&& apt-get update \
	&& apt-get install -y gnupg apt-transport-https \
	&& echo "deb https://s3.amazonaws.com/repo.deb.cyberduck.io stable main" | tee /etc/apt/sources.list.d/cyberduck.list > /dev/null \
	&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FE7097963FEFBE72 \
	&& apt-get update \
	&& apt-get install -y duck
