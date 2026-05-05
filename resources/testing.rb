# frozen_string_literal: true

provides :yum_elrepo_testing
unified_mode true

include YumElRepo::Cookbook::Helpers

use '_partial/_repository'

property :repositoryid, String, default: 'elrepo-testing'
property :mirrorlist, String, default: lazy { yum_elrepo_mirrorlist('elrepo-testing') }
property :description, String, default: lazy { yum_elrepo_description('Community Enterprise Linux Testing') }

action_class do
  include YumElRepo::Cookbook::Helpers
end

action :create do
  validate_yum_elrepo_platform!

  repo_options = yum_elrepo_repository_options(new_resource)

  yum_repository new_resource.repositoryid do
    repo_options.each do |property_name, value|
      send(property_name, value)
    end
    action :create
  end
end

action :remove do
  yum_repository new_resource.repositoryid do
    action :remove
  end
end
