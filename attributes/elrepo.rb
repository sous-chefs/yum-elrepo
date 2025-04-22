default['yum']['elrepo']['mirrorlist'] = "https://elrepo.org/mirrors-elrepo.el#{yum_elrepo_release}"
default['yum']['elrepo']['description'] = "ELRepo.org Community Enterprise Linux Repository - el#{yum_elrepo_release}"
default['yum']['elrepo']['gpgkey'] = 'https://elrepo.org/RPM-GPG-KEY-elrepo.org https://www.elrepo.org/RPM-GPG-KEY-v2-elrepo.org'
default['yum']['elrepo']['enabled'] = true
