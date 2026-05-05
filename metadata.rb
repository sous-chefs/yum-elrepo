# frozen_string_literal: true

name              'yum-elrepo'
maintainer        'Sous Chefs'
maintainer_email  'help@sous-chefs.org'
license           'Apache-2.0'
description       'Provides custom resources for managing ELRepo yum repositories'
version           '2.4.0'
source_url        'https://github.com/sous-chefs/yum-elrepo'
issues_url        'https://github.com/sous-chefs/yum-elrepo/issues'
chef_version      '>= 15.3'

supports 'almalinux', '>= 8.0'
supports 'oracle', '>= 8.0'
supports 'redhat', '>= 8.0'
supports 'rocky', '>= 8.0'
