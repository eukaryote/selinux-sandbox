#!/bin/bash

set -eu
set -o pipefail

# selinux utilities
sudo yum -q install -y \
    policycoreutils \
    policycoreutils-python \
    selinux-policy \
    selinux-policy-targeted \
    selinux-policy-doc \
    selinux-policy-devel \
    setools-console \
    setools-devel \
    libselinux \
    libselinux-devel \
    libselinux-python \
    libselinux-utils \
    setroubleshoot-server \
    mcstrans

# miscellaneous
sudo yum -q install -y vim git tree tmux mlocate elinks

# bug workaround
cat >/etc/tmpfiles.d/setroubleshoot.conf <<EOF
D /var/run/setroubleshoot 0755 setroubleshoot root -
EOF
