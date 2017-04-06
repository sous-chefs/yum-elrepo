#
# Author:: Sean OMeara (<someara@chef.io>)
# Cookbook:: yum-elrepo
# Recipe:: default
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

yum_repository 'elrepo' do
  description node['yum']['elrepo']['description'] unless node['yum']['elrepo']['description'].nil?
  baseurl node['yum']['elrepo']['baseurl'] unless node['yum']['elrepo']['baseurl'].nil?
  mirrorlist node['yum']['elrepo']['mirrorlist'] unless node['yum']['elrepo']['mirrorlist'].nil?
  gpgcheck node['yum']['elrepo']['gpgcheck'] unless node['yum']['elrepo']['gpgcheck'].nil?
  gpgkey node['yum']['elrepo']['gpgkey'] unless node['yum']['elrepo']['gpgkey'].nil?
  enabled node['yum']['elrepo']['enabled'] unless node['yum']['elrepo']['enabled'].nil?
  cost node['yum']['elrepo']['cost'] unless node['yum']['elrepo']['cost'].nil?
  exclude node['yum']['elrepo']['exclude'] unless node['yum']['elrepo']['exclude'].nil?
  enablegroups node['yum']['elrepo']['enablegroups'] unless node['yum']['elrepo']['enablegroups'].nil?
  failovermethod node['yum']['elrepo']['failovermethod'] unless node['yum']['elrepo']['failovermethod'].nil?
  http_caching node['yum']['elrepo']['http_caching'] unless node['yum']['elrepo']['http_caching'].nil?
  include_config node['yum']['elrepo']['include_config'] unless node['yum']['elrepo']['include_config'].nil?
  includepkgs node['yum']['elrepo']['includepkgs'] unless node['yum']['elrepo']['includepkgs'].nil?
  keepalive node['yum']['elrepo']['keepalive'] unless node['yum']['elrepo']['keepalive'].nil?
  max_retries node['yum']['elrepo']['max_retries'] unless node['yum']['elrepo']['max_retries'].nil?
  metadata_expire node['yum']['elrepo']['metadata_expire'] unless node['yum']['elrepo']['metadata_expire'].nil?
  mirror_expire node['yum']['elrepo']['mirror_expire'] unless node['yum']['elrepo']['mirror_expire'].nil?
  priority node['yum']['elrepo']['priority'] unless node['yum']['elrepo']['priority'].nil?
  proxy node['yum']['elrepo']['proxy'] unless node['yum']['elrepo']['proxy'].nil?
  proxy_username node['yum']['elrepo']['proxy_username'] unless node['yum']['elrepo']['proxy_username'].nil?
  proxy_password node['yum']['elrepo']['proxy_password'] unless node['yum']['elrepo']['proxy_password'].nil?
  repositoryid node['yum']['elrepo']['repositoryid'] unless node['yum']['elrepo']['repositoryid'].nil?
  sslcacert node['yum']['elrepo']['sslcacert'] unless node['yum']['elrepo']['sslcacert'].nil?
  sslclientcert node['yum']['elrepo']['sslclientcert'] unless node['yum']['elrepo']['sslclientcert'].nil?
  sslclientkey node['yum']['elrepo']['sslclientkey'] unless node['yum']['elrepo']['sslclientkey'].nil?
  sslverify node['yum']['elrepo']['sslverify'] unless node['yum']['elrepo']['sslverify'].nil?
  timeout node['yum']['elrepo']['timeout'] unless node['yum']['elrepo']['timeout'].nil?
  action :create
end
