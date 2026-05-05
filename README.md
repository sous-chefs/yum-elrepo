# yum-elrepo Cookbook

[![Cookbook Version](https://img.shields.io/cookbook/v/yum-elrepo.svg)](https://supermarket.chef.io/cookbooks/yum-elrepo)
[![CI State](https://github.com/sous-chefs/yum-elrepo/workflows/ci/badge.svg)](https://github.com/sous-chefs/yum-elrepo/actions?query=workflow%3Aci)
[![OpenCollective](https://opencollective.com/sous-chefs/backers/badge.svg)](#backers)
[![OpenCollective](https://opencollective.com/sous-chefs/sponsors/badge.svg)](#sponsors)
[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](https://opensource.org/licenses/Apache-2.0)

Provides custom resources for managing the ELRepo yum repositories on Enterprise Linux.

## Requirements

### Platforms

* AlmaLinux 8+
* Oracle Linux 8+ with the Red Hat Compatible Kernel
* Red Hat Enterprise Linux 8+
* Rocky Linux 8+

CentOS Stream is not supported because ELRepo states its packages are not compatible with CentOS
Stream kernels.

### Chef

* Chef Infra Client 15.3+

### Cookbooks

* none

## Resources

* [yum_elrepo](documentation/yum_elrepo.md)
* [yum_elrepo_extras](documentation/yum_elrepo_extras.md)
* [yum_elrepo_kernel](documentation/yum_elrepo_kernel.md)
* [yum_elrepo_testing](documentation/yum_elrepo_testing.md)

## Migration

This cookbook no longer provides recipes or node attributes. See [migration.md](migration.md) for
the resource migration guide.

## Usage

```ruby
yum_elrepo 'default'

yum_elrepo_extras 'default' do
  enabled false
end

yum_elrepo_kernel 'default'

yum_elrepo_testing 'default' do
  enabled false
end
```

Point a repository at an internally hosted server:

```ruby
yum_elrepo 'internal' do
  baseurl 'https://internal.example.com/elrepo'
  mirrorlist nil
  sslverify false
end
```

## Maintainers

This cookbook is maintained by the Sous Chefs. The Sous Chefs are a community of Chef cookbook
maintainers working together to maintain important cookbooks. If you would like to know more please
visit sous-chefs.org or come chat with us on the Chef Community Slack in #sous-chefs.

## Contributors

This project exists thanks to all the people who [contribute.](https://opencollective.com/sous-chefs/contributors.svg?width=890&button=false)

### Backers

Thank you to all our backers!

![https://opencollective.com/sous-chefs#backers](https://opencollective.com/sous-chefs/backers.svg?width=600&avatarHeight=40)

### Sponsors

Support this project by becoming a sponsor. Your logo will show up here with a link to your website.

![https://opencollective.com/sous-chefs/sponsor/0/website](https://opencollective.com/sous-chefs/sponsor/0/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/1/website](https://opencollective.com/sous-chefs/sponsor/1/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/2/website](https://opencollective.com/sous-chefs/sponsor/2/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/3/website](https://opencollective.com/sous-chefs/sponsor/3/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/4/website](https://opencollective.com/sous-chefs/sponsor/4/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/5/website](https://opencollective.com/sous-chefs/sponsor/5/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/6/website](https://opencollective.com/sous-chefs/sponsor/6/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/7/website](https://opencollective.com/sous-chefs/sponsor/7/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/8/website](https://opencollective.com/sous-chefs/sponsor/8/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/9/website](https://opencollective.com/sous-chefs/sponsor/9/avatar.svg?avatarHeight=100)
