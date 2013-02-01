maintainer        "Martin Fenner"
maintainer_email  "mfenner@plos.org"
license           "Apache 2.0"
description       "Configures cr-search"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0.0"
depends           "apt"
depends           "build-essential"
depends           "git"
depends           "ruby_build"
depends           "rbenv"
depends           "passenger_apache2"
depends           "mongodb"
depends           "phantomjs"

%w{ ubuntu }.each do |os|
  supports os
end