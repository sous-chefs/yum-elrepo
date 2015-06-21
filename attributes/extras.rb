default['yum']['elrepo-extras']['mirrorlist'] = "http://elrepo.org/mirrors-elrepo-extras.el#{node['platform_version'].to_i}"
default['yum']['elrepo-extras']['description'] = 'ELRepo.org Extras Yum Repository'
default['yum']['elrepo-extras']['gpgkey'] = 'http://elrepo.org/RPM-GPG-KEY-elrepo.org'
default['yum']['elrepo-extras']['enabled'] = true
