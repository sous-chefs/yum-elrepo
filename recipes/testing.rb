#
# Author:: Sean OMeara (<someara@chef.io>)
# Author:: Irving Popovetsky (<irving@chef.io>)
# Recipe:: yum-elrepo::testing
#
# Copyright:: 2013-2017, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

yum_repository 'elrepo-testing' do
  description node['yum']['elrepo-testing']['description'] unless node['yum']['elrepo-testing']['description'].nil?
  baseurl node['yum']['elrepo-testing']['baseurl'] unless node['yum']['elrepo-testing']['baseurl'].nil?
  mirrorlist node['yum']['elrepo-testing']['mirrorlist'] unless node['yum']['elrepo-testing']['mirrorlist'].nil?
  gpgcheck node['yum']['elrepo-testing']['gpgcheck'] unless node['yum']['elrepo-testing']['gpgcheck'].nil?
  gpgkey node['yum']['elrepo-testing']['gpgkey'] unless node['yum']['elrepo-testing']['gpgkey'].nil?
  enabled node['yum']['elrepo-testing']['enabled'] unless node['yum']['elrepo-testing']['enabled'].nil?
  cost node['yum']['elrepo-testing']['cost'] unless node['yum']['elrepo-testing']['cost'].nil?
  exclude node['yum']['elrepo-testing']['exclude'] unless node['yum']['elrepo-testing']['exclude'].nil?
  enablegroups node['yum']['elrepo-testing']['enablegroups'] unless node['yum']['elrepo-testing']['enablegroups'].nil?
  failovermethod node['yum']['elrepo-testing']['failovermethod'] unless node['yum']['elrepo-testing']['failovermethod'].nil?
  http_caching node['yum']['elrepo-testing']['http_caching'] unless node['yum']['elrepo-testing']['http_caching'].nil?
  include_config node['yum']['elrepo-testing']['include_config'] unless node['yum']['elrepo-testing']['include_config'].nil?
  includepkgs node['yum']['elrepo-testing']['includepkgs'] unless node['yum']['elrepo-testing']['includepkgs'].nil?
  keepalive node['yum']['elrepo-testing']['keepalive'] unless node['yum']['elrepo-testing']['keepalive'].nil?
  max_retries node['yum']['elrepo-testing']['max_retries'] unless node['yum']['elrepo-testing']['max_retries'].nil?
  metadata_expire node['yum']['elrepo-testing']['metadata_expire'] unless node['yum']['elrepo-testing']['metadata_expire'].nil?
  mirror_expire node['yum']['elrepo-testing']['mirror_expire'] unless node['yum']['elrepo-testing']['mirror_expire'].nil?
  priority node['yum']['elrepo-testing']['priority'] unless node['yum']['elrepo-testing']['priority'].nil?
  proxy node['yum']['elrepo-testing']['proxy'] unless node['yum']['elrepo-testing']['proxy'].nil?
  proxy_username node['yum']['elrepo-testing']['proxy_username'] unless node['yum']['elrepo-testing']['proxy_username'].nil?
  proxy_password node['yum']['elrepo-testing']['proxy_password'] unless node['yum']['elrepo-testing']['proxy_password'].nil?
  repositoryid node['yum']['elrepo-testing']['repositoryid'] unless node['yum']['elrepo-testing']['repositoryid'].nil?
  sslcacert node['yum']['elrepo-testing']['sslcacert'] unless node['yum']['elrepo-testing']['sslcacert'].nil?
  sslclientcert node['yum']['elrepo-testing']['sslclientcert'] unless node['yum']['elrepo-testing']['sslclientcert'].nil?
  sslclientkey node['yum']['elrepo-testing']['sslclientkey'] unless node['yum']['elrepo-testing']['sslclientkey'].nil?
  sslverify node['yum']['elrepo-testing']['sslverify'] unless node['yum']['elrepo-testing']['sslverify'].nil?
  timeout node['yum']['elrepo-testing']['timeout'] unless node['yum']['elrepo-testing']['timeout'].nil?
  action :create
end
