default['yum']['elrepo-extras']['mirrorlist'] = "https://elrepo.org/mirrors-elrepo-extras.el#{yum_elrepo_release}"
default['yum']['elrepo-extras']['description'] = "ELRepo.org Community Enterprise Linux Extras Repository - el#{yum_elrepo_release}"
default['yum']['elrepo-extras']['gpgkey'] =
  if node['platform_version'].to_i >= 10
    'https://www.elrepo.org/RPM-GPG-KEY-v2-elrepo.org'
  else
    'https://elrepo.org/RPM-GPG-KEY-elrepo.org https://www.elrepo.org/RPM-GPG-KEY-v2-elrepo.org'
  end
default['yum']['elrepo-extras']['enabled'] = true
