default['yum']['elrepo-kernel']['mirrorlist'] = "https://elrepo.org/mirrors-elrepo-kernel.el#{yum_elrepo_release}"
default['yum']['elrepo-kernel']['description'] = "ELRepo.org Community Enterprise Linux Kernel Repository - el#{yum_elrepo_release}"
default['yum']['elrepo-kernel']['gpgkey'] = 'https://elrepo.org/RPM-GPG-KEY-elrepo.org'
default['yum']['elrepo-kernel']['enabled'] = true
