
default['yum']['elrepo-testing']['mirrorlist'] = "http://elrepo.org/mirrors-elrepo-testing.el#{node['platform_version'].to_i}"
default['yum']['elrepo-testing']['description'] = 'ELRepo.org Testing Yum Repository'
default['yum']['elrepo-testing']['gpgkey'] = 'http://elrepo.org/RPM-GPG-KEY-elrepo.org'
default['yum']['elrepo-testing']['enabled'] = true
