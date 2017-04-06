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

yum_repository 'elrepo-extras' do
  description node['yum']['elrepo-extras']['description'] unless node['yum']['elrepo-extras']['description'].nil?
  baseurl node['yum']['elrepo-extras']['baseurl'] unless node['yum']['elrepo-extras']['baseurl'].nil?
  mirrorlist node['yum']['elrepo-extras']['mirrorlist'] unless node['yum']['elrepo-extras']['mirrorlist'].nil?
  gpgcheck node['yum']['elrepo-extras']['gpgcheck'] unless node['yum']['elrepo-extras']['gpgcheck'].nil?
  gpgkey node['yum']['elrepo-extras']['gpgkey'] unless node['yum']['elrepo-extras']['gpgkey'].nil?
  enabled node['yum']['elrepo-extras']['enabled'] unless node['yum']['elrepo-extras']['enabled'].nil?
  cost node['yum']['elrepo-extras']['cost'] unless node['yum']['elrepo-extras']['cost'].nil?
  exclude node['yum']['elrepo-extras']['exclude'] unless node['yum']['elrepo-extras']['exclude'].nil?
  enablegroups node['yum']['elrepo-extras']['enablegroups'] unless node['yum']['elrepo-extras']['enablegroups'].nil?
  failovermethod node['yum']['elrepo-extras']['failovermethod'] unless node['yum']['elrepo-extras']['failovermethod'].nil?
  http_caching node['yum']['elrepo-extras']['http_caching'] unless node['yum']['elrepo-extras']['http_caching'].nil?
  include_config node['yum']['elrepo-extras']['include_config'] unless node['yum']['elrepo-extras']['include_config'].nil?
  includepkgs node['yum']['elrepo-extras']['includepkgs'] unless node['yum']['elrepo-extras']['includepkgs'].nil?
  keepalive node['yum']['elrepo-extras']['keepalive'] unless node['yum']['elrepo-extras']['keepalive'].nil?
  max_retries node['yum']['elrepo-extras']['max_retries'] unless node['yum']['elrepo-extras']['max_retries'].nil?
  metadata_expire node['yum']['elrepo-extras']['metadata_expire'] unless node['yum']['elrepo-extras']['metadata_expire'].nil?
  mirror_expire node['yum']['elrepo-extras']['mirror_expire'] unless node['yum']['elrepo-extras']['mirror_expire'].nil?
  priority node['yum']['elrepo-extras']['priority'] unless node['yum']['elrepo-extras']['priority'].nil?
  proxy node['yum']['elrepo-extras']['proxy'] unless node['yum']['elrepo-extras']['proxy'].nil?
  proxy_username node['yum']['elrepo-extras']['proxy_username'] unless node['yum']['elrepo-extras']['proxy_username'].nil?
  proxy_password node['yum']['elrepo-extras']['proxy_password'] unless node['yum']['elrepo-extras']['proxy_password'].nil?
  repositoryid node['yum']['elrepo-extras']['repositoryid'] unless node['yum']['elrepo-extras']['repositoryid'].nil?
  sslcacert node['yum']['elrepo-extras']['sslcacert'] unless node['yum']['elrepo-extras']['sslcacert'].nil?
  sslclientcert node['yum']['elrepo-extras']['sslclientcert'] unless node['yum']['elrepo-extras']['sslclientcert'].nil?
  sslclientkey node['yum']['elrepo-extras']['sslclientkey'] unless node['yum']['elrepo-extras']['sslclientkey'].nil?
  sslverify node['yum']['elrepo-extras']['sslverify'] unless node['yum']['elrepo-extras']['sslverify'].nil?
  timeout node['yum']['elrepo-extras']['timeout'] unless node['yum']['elrepo-extras']['timeout'].nil?
  action :create
end
