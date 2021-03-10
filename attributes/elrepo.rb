default['yum']['elrepo']['mirrorlist'] = "http://elrepo.org/mirrors-elrepo.el#{platform_family?('amazon') ? '7' : node['platform_version'].to_i}"
default['yum']['elrepo']['description'] = 'ELRepo.org Yum Repository'
default['yum']['elrepo']['gpgkey'] = 'http://elrepo.org/RPM-GPG-KEY-elrepo.org'
default['yum']['elrepo']['enabled'] = true
