maintainer        "Martin Fenner"
maintainer_email  "m.fenner@orcid-eu.org"
license           "Apache 2.0"
description       "Configures cr-search"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0.1"
depends           "apt"
depends           "build-essential"
depends           "git"
depends           "passenger_apache2"
depends           "chef-mongodb"
depends           "phantomjs"

%w{ ubuntu }.each do |os|
  supports os
end