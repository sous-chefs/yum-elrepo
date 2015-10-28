#
# Author:: Sean OMeara (<someara@chef.io>)
# Author:: Irving Popovetsky (<irving@chef.io>)
# Recipe:: yum-elrepo::testing
#
# Copyright 2013-2015, Chef Software, Inc.
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
  description node['yum']['elrepo-testing']['description'] if node['yum']['elrepo-testing']['description']
  baseurl node['yum']['elrepo-testing']['baseurl'] if node['yum']['elrepo-testing']['baseurl']
  mirrorlist node['yum']['elrepo-testing']['mirrorlist'] if node['yum']['elrepo-testing']['mirrorlist']
  gpgcheck node['yum']['elrepo-testing']['gpgcheck'] if node['yum']['elrepo-testing']['gpgcheck']
  gpgkey node['yum']['elrepo-testing']['gpgkey'] if node['yum']['elrepo-testing']['gpgkey']
  enabled node['yum']['elrepo-testing']['enabled'] if node['yum']['elrepo-testing']['enabled']
  cost node['yum']['elrepo-testing']['cost'] if node['yum']['elrepo-testing']['cost']
  exclude node['yum']['elrepo-testing']['exclude'] if node['yum']['elrepo-testing']['exclude']
  enablegroups node['yum']['elrepo-testing']['enablegroups'] if  node['yum']['elrepo-testing']['enablegroups']
  failovermethod node['yum']['elrepo-testing']['failovermethod'] if node['yum']['elrepo-testing']['failovermethod']
  http_caching node['yum']['elrepo-testing']['http_caching'] if  node['yum']['elrepo-testing']['http_caching']
  include_config node['yum']['elrepo-testing']['include_config'] if node['yum']['elrepo-testing']['include_config']
  includepkgs node['yum']['elrepo-testing']['includepkgs'] if node['yum']['elrepo-testing']['includepkgs']
  keepalive node['yum']['elrepo-testing']['keepalive'] if  node['yum']['elrepo-testing']['keepalive']
  max_retries node['yum']['elrepo-testing']['max_retries'] if node['yum']['elrepo-testing']['max_retries']
  metadata_expire node['yum']['elrepo-testing']['metadata_expire'] if node['yum']['elrepo-testing']['metadata_expire']
  mirror_expire node['yum']['elrepo-testing']['mirror_expire'] if  node['yum']['elrepo-testing']['mirror_expire']
  priority node['yum']['elrepo-testing']['priority'] if node['yum']['elrepo-testing']['priority']
  proxy node['yum']['elrepo-testing']['proxy'] if node['yum']['elrepo-testing']['proxy']
  proxy_username node['yum']['elrepo-testing']['proxy_username'] if node['yum']['elrepo-testing']['proxy_username']
  proxy_password node['yum']['elrepo-testing']['proxy_password'] if node['yum']['elrepo-testing']['proxy_password']
  repositoryid node['yum']['elrepo-testing']['repositoryid'] if node['yum']['elrepo-testing']['repositoryid']
  sslcacert node['yum']['elrepo-testing']['sslcacert'] if node['yum']['elrepo-testing']['sslcacert']
  sslclientcert node['yum']['elrepo-testing']['sslclientcert'] if node['yum']['elrepo-testing']['sslclientcert']
  sslclientkey node['yum']['elrepo-testing']['sslclientkey'] if node['yum']['elrepo-testing']['sslclientkey']
  sslverify node['yum']['elrepo-testing']['sslverify'] if node['yum']['elrepo-testing']['sslverify']
  timeout node['yum']['elrepo-testing']['timeout'] if  node['yum']['elrepo-testing']['timeout']
  action :create
end
