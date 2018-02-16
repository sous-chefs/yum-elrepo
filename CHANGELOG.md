# yum-elrepo Cookbook CHANGELOG
This file is used to list changes made in each version of the yum-elrepo cookbook.

## 2.0.0 (2018-02-16)

- Require Chef 12.14+ and remove compat_resource dep
- Improve testing
- Use a SPDX compliant license string

## 1.1.1 (2016-12-22)

- Switch to inspec for testing
- Depend on the latest compat_resource cookbook
- Cookstyle fixes

## 1.1.0 (2016-11-14)
- Replace yum dependency with compat_resource
- Added Kernel repo

## 1.0.0 (2016-09-06)
- Testing updates
- Add chef_version metadata
- Remove support for Chef 11

## v0.2.5 (2015-12-01)
- Updating if/unless logic in recipes

## v0.2.4 (2015-10-28)
- Fixing Chef 13 nil property deprecation warnings

## v0.2.3 (2015-09-22)
- Update yum depencency from ~3.0 to ~3.2
- Added source_url and issues_url metadata
- Added the standard chef rubocop config
- Added standard Chef gitignore and chefignore files
- Update berksfile API endpoint
- Update distro versions in the Kitchen config
- Add Travis CI and cookbook version badges in the readme
- Expand the requirements section in the readme
- Update contributing, maintainers, and testing docs
- Add standard Gemfile with testing and development dependencies

## v0.2.2 (2015-06-21)
- Add elrepo-testing and elpreo-extras repositories

## v0.2.0 (2014-02-14)
Updating test harness

## v0.1.4
Adding CHANGELOG.md

## v0.1.0
initial release
