FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.3

RUN gem install git-publish --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["git-publish"]
CMD ["--help"]
