name 'yum-elrepo'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs and configures the elrepo yum repository'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.0'

depends 'yum', '>= 3.2', '< 5.0'

source_url 'https://github.com/chef-cookbooks/yum-elrepo'
issues_url 'https://github.com/chef-cookbooks/yum-elrepo/issues'

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end

chef_version '>= 12'
