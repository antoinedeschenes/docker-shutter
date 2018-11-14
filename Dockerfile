FROM ubuntu:xenial

RUN apt-get update && apt-get install -y --no-install-recommends \
  sudo \
  libgoo-canvas-perl \
  libgnome2-perl \
  libgnome2-wnck-perl \
  libgtk2-unique-perl \
  libgtk2-imageview-perl \
  libfile-copy-recursive-perl \
  libfile-which-perl \
  libxml-simple-perl \
  libnet-dbus-perl \
  libproc-simple-perl \
  libsort-naturally-perl \
  imagemagick \
  liblocale-gettext-perl \
  libproc-processtable-perl \
  libimage-librsvg-perl \
  libjson-maybexs-perl \
  libwww-mechanize-perl \
  libimage-magick-perl \
  libnet-oauth-perl \
  libpath-class-perl \
  libimage-exiftool-perl \
  && apt-get clean

ADD https://launchpad.net/shutter/0.9x/0.94.2/+download/shutter-0.94.2.tar.gz /tmp/shutter.tar.gz
RUN tar --directory=/usr --extract --gzip --strip-components=1 --file=/tmp/shutter.tar.gz && rm /tmp/shutter.tar.gz

CMD shutter
