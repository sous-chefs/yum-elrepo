#
# Author:: Sean OMeara (<someara@chef.io>)
# Recipe:: yum-elrepo::extras
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

yum_repository 'elrepo-extras' do
  description node['yum']['elrepo-extras']['description'] if node['yum']['elrepo-extras']['description']
  baseurl node['yum']['elrepo-extras']['baseurl'] if node['yum']['elrepo-extras']['baseurl']
  mirrorlist node['yum']['elrepo-extras']['mirrorlist'] if node['yum']['elrepo-extras']['mirrorlist']
  gpgcheck node['yum']['elrepo-extras']['gpgcheck'] if node['yum']['elrepo-extras']['gpgcheck']
  gpgkey node['yum']['elrepo-extras']['gpgkey'] if node['yum']['elrepo-extras']['gpgkey']
  enabled node['yum']['elrepo-extras']['enabled'] if node['yum']['elrepo-extras']['enabled']
  cost node['yum']['elrepo-extras']['cost'] if node['yum']['elrepo-extras']['cost']
  exclude node['yum']['elrepo-extras']['exclude'] if node['yum']['elrepo-extras']['exclude']
  enablegroups node['yum']['elrepo-extras']['enablegroups'] if  node['yum']['elrepo-extras']['enablegroups']
  failovermethod node['yum']['elrepo-extras']['failovermethod'] if node['yum']['elrepo-extras']['failovermethod']
  http_caching node['yum']['elrepo-extras']['http_caching'] if  node['yum']['elrepo-extras']['http_caching']
  include_config node['yum']['elrepo-extras']['include_config'] if node['yum']['elrepo-extras']['include_config']
  includepkgs node['yum']['elrepo-extras']['includepkgs'] if node['yum']['elrepo-extras']['includepkgs']
  keepalive node['yum']['elrepo-extras']['keepalive'] if  node['yum']['elrepo-extras']['keepalive']
  max_retries node['yum']['elrepo-extras']['max_retries'] if node['yum']['elrepo-extras']['max_retries']
  metadata_expire node['yum']['elrepo-extras']['metadata_expire'] if node['yum']['elrepo-extras']['metadata_expire']
  mirror_expire node['yum']['elrepo-extras']['mirror_expire'] if  node['yum']['elrepo-extras']['mirror_expire']
  priority node['yum']['elrepo-extras']['priority'] if node['yum']['elrepo-extras']['priority']
  proxy node['yum']['elrepo-extras']['proxy'] if node['yum']['elrepo-extras']['proxy']
  proxy_username node['yum']['elrepo-extras']['proxy_username'] if node['yum']['elrepo-extras']['proxy_username']
  proxy_password node['yum']['elrepo-extras']['proxy_password'] if node['yum']['elrepo-extras']['proxy_password']
  repositoryid node['yum']['elrepo-extras']['repositoryid'] if node['yum']['elrepo-extras']['repositoryid']
  sslcacert node['yum']['elrepo-extras']['sslcacert'] if node['yum']['elrepo-extras']['sslcacert']
  sslclientcert node['yum']['elrepo-extras']['sslclientcert'] if node['yum']['elrepo-extras']['sslclientcert']
  sslclientkey node['yum']['elrepo-extras']['sslclientkey'] if node['yum']['elrepo-extras']['sslclientkey']
  sslverify node['yum']['elrepo-extras']['sslverify'] if node['yum']['elrepo-extras']['sslverify']
  timeout node['yum']['elrepo-extras']['timeout'] if  node['yum']['elrepo-extras']['timeout']
  action :create
end
