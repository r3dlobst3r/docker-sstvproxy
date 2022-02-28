FROM --platform=linux/arm64/v8 lsiobase/alpine:3.15

LABEL maintainer="r3dlobst3r"

RUN \
	apk update && \
	apk add --no-cache \
		python3 \
		python3-tkinter \
		ffmpeg \
		jq \
		git \
		curl \
		cmd:pip3 && \
	pip3 install flask requests 

# add local files
COPY root/ /

# ports and volumes
VOLUME /config
EXPOSE 8098 8099
