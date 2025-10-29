default['yum']['elrepo-testing']['mirrorlist'] = "https://elrepo.org/mirrors-elrepo-testing.el#{yum_elrepo_release}"
default['yum']['elrepo-testing']['description'] = "ELRepo.org Community Enterprise Linux Testing Repository - el#{yum_elrepo_release}"
default['yum']['elrepo-testing']['gpgkey'] =
  if node['platform_version'].to_i >= 10
    'https://www.elrepo.org/RPM-GPG-KEY-v2-elrepo.org'
  else
    'https://elrepo.org/RPM-GPG-KEY-elrepo.org https://www.elrepo.org/RPM-GPG-KEY-v2-elrepo.org'
  end
default['yum']['elrepo-testing']['enabled'] = true
