name 'yum-elrepo'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache-2.0'
description 'Installs and configures the elrepo yum repository'
version '2.0.0'

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/yum-elrepo'
issues_url 'https://github.com/chef-cookbooks/yum-elrepo/issues'
chef_version '>= 12.15'
