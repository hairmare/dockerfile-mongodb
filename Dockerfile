FROM hairmare/gentoo
MAINTAINER Lucas Bickel <hairmare@purplehaze.ch>

# configure install

ENV GENTOO_WORLD_PACKAGES dev-db/mongodb

# install mongodb

RUN emerge $GENTOO_WORLD_PACKAGES -q

# configure package

RUN sed -i -e 's|^(MONGODB_IP.*)|#$1|' /etc/conf.d/mongodb; \
    rc-update add mongodb

# configure runtime

CMD bash -c 'rc default && tailf /var/log/mongodb/mongodb.log'

VOLUME /var/lib/mongodb

EXPOSE 27017 28017
