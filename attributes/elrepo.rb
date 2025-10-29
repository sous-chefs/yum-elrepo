default['yum']['elrepo']['mirrorlist'] = "https://elrepo.org/mirrors-elrepo.el#{yum_elrepo_release}"
default['yum']['elrepo']['description'] = "ELRepo.org Community Enterprise Linux Repository - el#{yum_elrepo_release}"
default['yum']['elrepo']['gpgkey'] =
  if node['platform_version'].to_i >= 10
    'https://www.elrepo.org/RPM-GPG-KEY-v2-elrepo.org'
  else
    'https://elrepo.org/RPM-GPG-KEY-elrepo.org https://www.elrepo.org/RPM-GPG-KEY-v2-elrepo.org'
  end
default['yum']['elrepo']['enabled'] = true
