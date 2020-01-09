FROM openjdk:8

RUN apt-get update -qq && apt-get install -y -qq curl unzip zip
RUN curl -s "https://get.sdkman.io" | bash

ARG GRAILS_VERSION
RUN bash -c "set -e; source ~/.sdkman/bin/sdkman-init.sh || true; sdk install grails $GRAILS_VERSION"

ENV PATH $PATH:/root/.sdkman/candidates/grails/current/bin/

