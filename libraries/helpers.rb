module YumElRepo
  module Cookbook
    module Helpers
      def yum_elrepo_release
        if platform?('amazon')
          case node['platform_version'].to_i
          when 2023
            9
          when 2
            7
          end
        else
          node['platform_version'].to_i
        end
      end
    end
  end
end
# Needed to used in attributes/
Chef::Node.include ::YumElRepo::Cookbook::Helpers
