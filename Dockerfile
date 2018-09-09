FROM alpine:3.8

RUN apk update

RUN adduser -D -g users user
RUN mkdir -p /home/user \
	&& chown user:users /home/user

RUN apk add xvfb x11vnc fluxbox xdpyinfo st vim \
	&& [[ ! -d /opt ]] && mkdir /opt

COPY bootstrap.sh /opt

USER user
ENV HOME /home/user
WORKDIR /home/user
CMD ["/opt/bootstrap.sh"]

