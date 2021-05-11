FROM ghcr.io/linuxserver/papermerge

RUN \
 apt-get update && \
 echo "**** install build packages ****" && \
 apt-get install -y \
 	--no-install-recommends \
	tesseract-ocr-tur && \
 echo "**** cleanup ****" && \
 rm -rf \
	/root/.cache \
	/tmp/* && \
 apt-get clean -y

# copy local files
COPY root/ /

# ports and volumes
EXPOSE 8000
