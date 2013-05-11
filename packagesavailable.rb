# Fact: packagesavailable
#
# Return true if packages from Meetin.gs
# repository are available.
#
# 2013-05-11 / Meetin.gs

require 'facter'

Facter.add(:packagesavailable) do
  setcode do
    true
  end
end
