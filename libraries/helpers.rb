module YumElRepo
  module Cookbook
    module Helpers
      def yum_elrepo_release
        node['platform_version'].to_i
      end
    end
  end
end
# Needed to used in attributes/
Chef::Node.include ::YumElRepo::Cookbook::Helpers
