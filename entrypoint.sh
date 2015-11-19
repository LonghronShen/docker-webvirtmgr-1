#!/bin/sh

# Change the GID of the libvirtd group to match that of the host
sed -i s/108/$LIBVIRTGID/g /etc/passwd
sed -i s/108/$LIBVIRTGID/g /etc/group

exec supervisord -n
