## -*- docker-image-name: "armbuild/ocs-app-owncloud:trusty" -*-
FROM armbuild/ocs-distrib-ubuntu:trusty
MAINTAINER Online Labs <opensource@ocs.online.net> (@online_en)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter

# Install packages
RUN apt-get -q update && \
    apt-get -y -q upgrade && \
    apt-get install -y -q \
    php5-curl \
    pwgen \
    && apt-get install --no-install-recommends -y -q \
        owncloud \
    && apt-get clean

# Configure Apache
RUN a2enmod rewrite

# Update permissions
RUN chown -R www-data:www-data /etc/owncloud

# Patch rootfs
ADD ./patches/etc/ /etc/
ADD ./patches/usr/local/ /usr/local/

# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
