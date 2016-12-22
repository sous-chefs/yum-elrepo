name 'yum-elrepo'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs and configures the elrepo yum repository'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.1.0'

depends 'compat_resource', '>= 12.16.3'

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/yum-elrepo'
issues_url 'https://github.com/chef-cookbooks/yum-elrepo/issues'
chef_version '>= 12.1'
