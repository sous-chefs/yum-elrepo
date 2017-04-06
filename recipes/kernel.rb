#
# Author:: Sean OMeara (<someara@chef.io>)
# Recipe:: yum-elrepo::extras
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

yum_repository 'elrepo-kernel' do
  description node['yum']['elrepo-kernel']['description'] unless node['yum']['elrepo-kernel']['description'].nil?
  baseurl node['yum']['elrepo-kernel']['baseurl'] unless node['yum']['elrepo-kernel']['baseurl'].nil?
  mirrorlist node['yum']['elrepo-kernel']['mirrorlist'] unless node['yum']['elrepo-kernel']['mirrorlist'].nil?
  gpgcheck node['yum']['elrepo-kernel']['gpgcheck'] unless node['yum']['elrepo-kernel']['gpgcheck'].nil?
  gpgkey node['yum']['elrepo-kernel']['gpgkey'] unless node['yum']['elrepo-kernel']['gpgkey'].nil?
  enabled node['yum']['elrepo-kernel']['enabled'] unless node['yum']['elrepo-kernel']['enabled'].nil?
  cost node['yum']['elrepo-kernel']['cost'] unless node['yum']['elrepo-kernel']['cost'].nil?
  exclude node['yum']['elrepo-kernel']['exclude'] unless node['yum']['elrepo-kernel']['exclude'].nil?
  enablegroups node['yum']['elrepo-kernel']['enablegroups'] unless node['yum']['elrepo-kernel']['enablegroups'].nil?
  failovermethod node['yum']['elrepo-kernel']['failovermethod'] unless node['yum']['elrepo-kernel']['failovermethod'].nil?
  http_caching node['yum']['elrepo-kernel']['http_caching'] unless node['yum']['elrepo-kernel']['http_caching'].nil?
  include_config node['yum']['elrepo-kernel']['include_config'] unless node['yum']['elrepo-kernel']['include_config'].nil?
  includepkgs node['yum']['elrepo-kernel']['includepkgs'] unless node['yum']['elrepo-kernel']['includepkgs'].nil?
  keepalive node['yum']['elrepo-kernel']['keepalive'] unless node['yum']['elrepo-kernel']['keepalive'].nil?
  max_retries node['yum']['elrepo-kernel']['max_retries'] unless node['yum']['elrepo-kernel']['max_retries'].nil?
  metadata_expire node['yum']['elrepo-kernel']['metadata_expire'] unless node['yum']['elrepo-kernel']['metadata_expire'].nil?
  mirror_expire node['yum']['elrepo-kernel']['mirror_expire'] unless node['yum']['elrepo-kernel']['mirror_expire'].nil?
  priority node['yum']['elrepo-kernel']['priority'] unless node['yum']['elrepo-kernel']['priority'].nil?
  proxy node['yum']['elrepo-kernel']['proxy'] unless node['yum']['elrepo-kernel']['proxy'].nil?
  proxy_username node['yum']['elrepo-kernel']['proxy_username'] unless node['yum']['elrepo-kernel']['proxy_username'].nil?
  proxy_password node['yum']['elrepo-kernel']['proxy_password'] unless node['yum']['elrepo-kernel']['proxy_password'].nil?
  repositoryid node['yum']['elrepo-kernel']['repositoryid'] unless node['yum']['elrepo-kernel']['repositoryid'].nil?
  sslcacert node['yum']['elrepo-kernel']['sslcacert'] unless node['yum']['elrepo-kernel']['sslcacert'].nil?
  sslclientcert node['yum']['elrepo-kernel']['sslclientcert'] unless node['yum']['elrepo-kernel']['sslclientcert'].nil?
  sslclientkey node['yum']['elrepo-kernel']['sslclientkey'] unless node['yum']['elrepo-kernel']['sslclientkey'].nil?
  sslverify node['yum']['elrepo-kernel']['sslverify'] unless node['yum']['elrepo-kernel']['sslverify'].nil?
  timeout node['yum']['elrepo-kernel']['timeout'] unless node['yum']['elrepo-kernel']['timeout'].nil?
  action :create
end
