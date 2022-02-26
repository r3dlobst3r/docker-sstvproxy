FROM arm64v8/alpine:latest

LABEL maintainer="stokkes@gmail.com"

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
