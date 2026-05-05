# frozen_string_literal: true

require 'spec_helper'

describe 'yum_elrepo resources' do
  step_into :yum_elrepo
  step_into :yum_elrepo_extras
  step_into :yum_elrepo_kernel
  step_into :yum_elrepo_testing

  context 'on AlmaLinux 9' do
    platform 'almalinux', '9'

    recipe do
      yum_elrepo 'default'
      yum_elrepo_extras 'default'
      yum_elrepo_kernel 'default'
      yum_elrepo_testing 'default'
    end

    it do
      is_expected.to create_yum_repository('elrepo').with(
        description: 'ELRepo.org Community Enterprise Linux Repository - el9',
        enabled: true,
        gpgcheck: true,
        gpgkey: 'https://elrepo.org/RPM-GPG-KEY-elrepo.org https://www.elrepo.org/RPM-GPG-KEY-v2-elrepo.org',
        mirrorlist: 'https://elrepo.org/mirrors-elrepo.el9',
        repositoryid: 'elrepo'
      )
    end

    it do
      is_expected.to create_yum_repository('elrepo-extras').with(
        description: 'ELRepo.org Community Enterprise Linux Extras Repository - el9',
        enabled: true,
        mirrorlist: 'https://elrepo.org/mirrors-elrepo-extras.el9',
        repositoryid: 'elrepo-extras'
      )
    end

    it do
      is_expected.to create_yum_repository('elrepo-kernel').with(
        description: 'ELRepo.org Community Enterprise Linux Kernel Repository - el9',
        enabled: true,
        mirrorlist: 'https://elrepo.org/mirrors-elrepo-kernel.el9',
        repositoryid: 'elrepo-kernel'
      )
    end

    it do
      is_expected.to create_yum_repository('elrepo-testing').with(
        description: 'ELRepo.org Community Enterprise Linux Testing Repository - el9',
        enabled: true,
        mirrorlist: 'https://elrepo.org/mirrors-elrepo-testing.el9',
        repositoryid: 'elrepo-testing'
      )
    end
  end

  context 'on AlmaLinux 10' do
    platform 'almalinux', '10'

    recipe do
      yum_elrepo 'default'
    end

    it do
      is_expected.to create_yum_repository('elrepo').with(
        gpgkey: 'https://www.elrepo.org/RPM-GPG-KEY-v2-elrepo.org',
        mirrorlist: 'https://elrepo.org/mirrors-elrepo.el10'
      )
    end
  end

  context 'with custom repository options' do
    platform 'almalinux', '9'

    recipe do
      yum_elrepo 'internal' do
        baseurl 'https://repo.example.com/elrepo'
        mirrorlist nil
        enabled false
        sslverify false
      end
    end

    it do
      is_expected.to create_yum_repository('elrepo').with(
        baseurl: 'https://repo.example.com/elrepo',
        enabled: false,
        sslverify: false
      )
    end
  end

  context 'with action :remove' do
    platform 'almalinux', '9'

    recipe do
      yum_elrepo 'default' do
        action :remove
      end
    end

    it { is_expected.to remove_yum_repository('elrepo') }
  end
end
