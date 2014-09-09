#!/bin/bash

. /etc/lsb-release || true

if [ "$DISTRIB_CODENAME" == "trusty" ]; then
cat >debian/packages-available.install <<EOL
packagesavailable.rb  /usr/lib/ruby/vendor_ruby/facter/
EOL
fi

if [ "$DISTRIB_CODENAME" == "precise" ]; then
cat >debian/packages-available.install <<EOL
packagesavailable.rb  /usr/lib/ruby/1.8/facter/
EOL
fi

dpkg-buildpackage -rfakeroot -b
