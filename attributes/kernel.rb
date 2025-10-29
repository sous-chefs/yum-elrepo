default['yum']['elrepo-kernel']['mirrorlist'] = "https://elrepo.org/mirrors-elrepo-kernel.el#{yum_elrepo_release}"
default['yum']['elrepo-kernel']['description'] = "ELRepo.org Community Enterprise Linux Kernel Repository - el#{yum_elrepo_release}"
default['yum']['elrepo-kernel']['gpgkey'] =
  if node['platform_version'].to_i >= 10
    'https://www.elrepo.org/RPM-GPG-KEY-v2-elrepo.org'
  else
    'https://elrepo.org/RPM-GPG-KEY-elrepo.org https://www.elrepo.org/RPM-GPG-KEY-v2-elrepo.org'
  end
default['yum']['elrepo-kernel']['enabled'] = true
