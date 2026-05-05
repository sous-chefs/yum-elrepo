# frozen_string_literal: true

title 'yum-elrepo default repository tests'

el_release = os.release.to_i
gpgkey = if el_release >= 10
           'https://www.elrepo.org/RPM-GPG-KEY-v2-elrepo.org'
         else
           'https://elrepo.org/RPM-GPG-KEY-elrepo.org https://www.elrepo.org/RPM-GPG-KEY-v2-elrepo.org'
         end

{
  'elrepo' => 'https://elrepo.org/mirrors-elrepo.el',
  'elrepo-extras' => 'https://elrepo.org/mirrors-elrepo-extras.el',
  'elrepo-kernel' => 'https://elrepo.org/mirrors-elrepo-kernel.el',
  'elrepo-testing' => 'https://elrepo.org/mirrors-elrepo-testing.el',
}.each do |repo, mirror_prefix|
  control "yum-elrepo-#{repo}-01" do
    impact 1.0
    title "#{repo} repository is configured"

    describe yum.repo(repo) do
      it { should exist }
      it { should be_enabled }
      its('mirrors') { should cmp "#{mirror_prefix}#{el_release}" }
    end

    describe ini("/etc/yum.repos.d/#{repo}.repo") do
      its("#{repo}.gpgcheck") { should cmp 1 }
      its("#{repo}.gpgkey") { should cmp gpgkey }
    end
  end
end
