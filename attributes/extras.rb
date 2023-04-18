default['yum']['elrepo-extras']['mirrorlist'] = "https://elrepo.org/mirrors-elrepo-extras.el#{yum_elrepo_release}"
default['yum']['elrepo-extras']['description'] = "ELRepo.org Community Enterprise Linux Extras Repository - el#{yum_elrepo_release}"
default['yum']['elrepo-extras']['gpgkey'] = 'https://elrepo.org/RPM-GPG-KEY-elrepo.org'
default['yum']['elrepo-extras']['enabled'] = true
