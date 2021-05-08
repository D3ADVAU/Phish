FROM debian:1.0
LABEL MAINTAINER="https://github.com/Deadman247/Phish"

WORKDIR phish/
ADD . /phish

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install --no-install-recommends -y php
RUN apt-get install -y unzip
RUN apt-get clean
RUN apt-get install -y wget

CMD ["./phisher.sh"]
