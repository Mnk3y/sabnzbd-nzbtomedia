FROM hotio/sabnzbd:latest

# install packages
RUN apk add --no-cache ffmpeg curl wget git

# create scripts directory
RUN mkdir /scripts
RUN mkdir /scripts/sabnzbd

# install nzbToMedia
RUN git clone https://github.com/clinton-hall/nzbToMedia.git /scripts/sabnzbd/nzbToMedia

# change permissions
RUN chmod 777 -R /scripts/sabnzbd/nzbToMedia
