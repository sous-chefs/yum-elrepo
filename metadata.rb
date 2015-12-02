name 'yum-elrepo'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs and configures the elrepo yum repository'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.2.5'

depends 'yum', '~> 3.2'

source_url 'https://github.com/chef-cookbooks/yum-elrepo' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/yum-elrepo/issues' if respond_to?(:issues_url)

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end
