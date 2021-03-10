e_rel = os.name == 'amazon' ? '7' : os.release.to_i

describe yum.repo('elrepo') do
  it { should exist }
  it { should be_enabled }
  its('mirrors') { should cmp "http://elrepo.org/mirrors-elrepo.el#{e_rel}" }
end

describe yum.repo('elrepo-extras') do
  it { should exist }
  it { should be_enabled }
  its('mirrors') { should cmp "http://elrepo.org/mirrors-elrepo-extras.el#{e_rel}" }
end

describe yum.repo('elrepo-kernel') do
  it { should exist }
  it { should be_enabled }
  its('mirrors') { should cmp "http://elrepo.org/mirrors-elrepo-kernel.el#{e_rel}" }
end

describe yum.repo('elrepo-testing') do
  it { should exist }
  it { should be_enabled }
  its('mirrors') { should cmp "http://elrepo.org/mirrors-elrepo-testing.el#{e_rel}" }
end

%w(
  elrepo
  elrepo-extras
  elrepo-kernel
  elrepo-testing
).each do |repo|
  describe ini("/etc/yum.repos.d/#{repo}.repo") do
    its("#{repo}.gpgcheck") { should cmp 1 }
    its("#{repo}.gpgkey") { should cmp 'http://elrepo.org/RPM-GPG-KEY-elrepo.org' }
  end
end
