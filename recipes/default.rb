#
# Author:: Sean OMeara (<someara@getchef.com>)
# Recipe:: yum-elrepo::default
#
# Copyright 2013, Chef
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
  description node['yum']['elrepo']['description']
  baseurl node['yum']['elrepo']['baseurl']
  mirrorlist node['yum']['elrepo']['mirrorlist']
  gpgcheck node['yum']['elrepo']['gpgcheck']
  gpgkey node['yum']['elrepo']['gpgkey']
  enabled node['yum']['elrepo']['enabled']
  cost node['yum']['elrepo']['cost']
  exclude node['yum']['elrepo']['exclude']
  enablegroups node['yum']['elrepo']['enablegroups']
  failovermethod node['yum']['elrepo']['failovermethod']
  http_caching node['yum']['elrepo']['http_caching']
  include_config node['yum']['elrepo']['include_config']
  includepkgs node['yum']['elrepo']['includepkgs']
  keepalive node['yum']['elrepo']['keepalive']
  max_retries node['yum']['elrepo']['max_retries']
  metadata_expire node['yum']['elrepo']['metadata_expire']
  mirror_expire node['yum']['elrepo']['mirror_expire']
  priority node['yum']['elrepo']['priority']
  proxy node['yum']['elrepo']['proxy']
  proxy_username node['yum']['elrepo']['proxy_username']
  proxy_password node['yum']['elrepo']['proxy_password']
  repositoryid node['yum']['elrepo']['repositoryid']
  sslcacert node['yum']['elrepo']['sslcacert']
  sslclientcert node['yum']['elrepo']['sslclientcert']
  sslclientkey node['yum']['elrepo']['sslclientkey']
  sslverify node['yum']['elrepo']['sslverify']
  timeout node['yum']['elrepo']['timeout']
  action :create
end
