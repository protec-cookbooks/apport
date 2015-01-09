name             "apport"
maintainer       "Protec Innovations"
maintainer_email "dev@protecinnovations.co.uk"
license          "All rights reserved"
description      "Configures Apport"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w{ ubuntu }.each do |os|
    supports os
end

attribute "apport/enabled",
    :display_name => "Apport Enabled",
    :description => "Enables or disables apport",
    :default => "true"

