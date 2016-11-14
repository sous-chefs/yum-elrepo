default['yum']['elrepo-kernel']['mirrorlist'] = "http://elrepo.org/mirrors-elrepo-kernel.el#{node['platform_version'].to_i}"
default['yum']['elrepo-kernel']['description'] = 'ELRepo.org Extras Yum Repository'
default['yum']['elrepo-kernel']['gpgkey'] = 'http://elrepo.org/RPM-GPG-KEY-elrepo.org'
default['yum']['elrepo-kernel']['enabled'] = true
