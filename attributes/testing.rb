default['yum']['elrepo-testing']['mirrorlist'] = "https://elrepo.org/mirrors-elrepo-testing.el#{yum_elrepo_release}"
default['yum']['elrepo-testing']['description'] = "ELRepo.org Community Enterprise Linux Testing Repository - el#{yum_elrepo_release}"
default['yum']['elrepo-testing']['gpgkey'] = 'https://elrepo.org/RPM-GPG-KEY-elrepo.org'
default['yum']['elrepo-testing']['enabled'] = true
