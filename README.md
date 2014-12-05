Official Owncloud image on Online Labs
====================================

Scripts to build the official Owncloud image on Online Labs

This image is built using [Image Tools](https://github.com/online-labs/image-tools) and is based on the official [Ubuntu](https://github.com/online-labs/image-ubuntu) image.

---

Commands
--------

    # build the image in a rootfs directory
    $ make rootfs

    # write the image to /dev/nbd1
    $ make install_on_disk

Full list of commands available at: https://github.com/online-labs/image-tools/tree/master#commands

Links
-----

- [Online Labs Documentation: Owncloud with Object Storage](https://doc.cloud.online.net/applications/owncloud.html)
