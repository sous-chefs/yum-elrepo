# frozen_string_literal: true

module YumElRepo
  module Cookbook
    module Helpers
      SUPPORTED_EL_RELEASES = (8..10).freeze
      LEGACY_GPG_KEY = 'https://elrepo.org/RPM-GPG-KEY-elrepo.org'
      V2_GPG_KEY = 'https://www.elrepo.org/RPM-GPG-KEY-v2-elrepo.org'

      def validate_yum_elrepo_platform!
        return if yum_elrepo_supported_platform?

        raise "#{node['platform']} #{node['platform_version']} is not supported by yum-elrepo"
      end

      def yum_elrepo_supported_platform?
        platform_family?('rhel') &&
          SUPPORTED_EL_RELEASES.cover?(yum_elrepo_release) &&
          node['platform'] != 'centos_stream'
      end

      def yum_elrepo_release
        node['platform_version'].to_i
      end

      def yum_elrepo_gpgkey
        return V2_GPG_KEY if yum_elrepo_release >= 10

        "#{LEGACY_GPG_KEY} #{V2_GPG_KEY}"
      end

      def yum_elrepo_mirrorlist(repo_slug)
        validate_yum_elrepo_platform!

        "https://elrepo.org/mirrors-#{repo_slug}.el#{yum_elrepo_release}"
      end

      def yum_elrepo_description(label)
        validate_yum_elrepo_platform!

        "ELRepo.org #{label} Repository - el#{yum_elrepo_release}"
      end

      def yum_elrepo_repository_options(resource)
        {
          description: resource.description,
          baseurl: resource.baseurl,
          mirrorlist: resource.mirrorlist,
          gpgcheck: resource.gpgcheck,
          gpgkey: resource.gpgkey,
          enabled: resource.enabled,
          cost: resource.cost,
          exclude: resource.exclude,
          enablegroups: resource.enablegroups,
          failovermethod: resource.failovermethod,
          http_caching: resource.http_caching,
          include_config: resource.include_config,
          includepkgs: resource.includepkgs,
          keepalive: resource.keepalive,
          max_retries: resource.max_retries,
          metadata_expire: resource.metadata_expire,
          mirror_expire: resource.mirror_expire,
          priority: resource.priority,
          proxy: resource.proxy,
          proxy_username: resource.proxy_username,
          proxy_password: resource.proxy_password,
          repositoryid: resource.repositoryid,
          sslcacert: resource.sslcacert,
          sslclientcert: resource.sslclientcert,
          sslclientkey: resource.sslclientkey,
          sslverify: resource.sslverify,
          timeout: resource.timeout,
        }.compact
      end
    end
  end
end
