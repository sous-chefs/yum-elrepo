# yum-elrepo Cookbook CHANGELOG

This file is used to list changes made in each version of the yum-elrepo cookbook.

## 2.2.2 - *2023-07-10*

## 2.2.1 - *2023-05-17*

## 2.2.0 - *2023-04-18*

- Add support for EL9 and AmazonLinux 2023
- Switch to using https by default
- Remove legacy files
- Update various GitHub Actions
- Pull in latest standard files

## 2.1.5 - *2023-04-18*

- Add renovate.json

## 2.1.4 - *2023-02-14*

- Remove Delivery
- Remove Gemfile

## 2.1.3 - *2022-01-28*

- Add Alma Linux and Rocky Linux to testing
- Remove CentOS 8 (prefer Stream)

## 2.1.2 - *2021-08-29*

- Standardise files with files in sous-chefs/repo-management

## 2.1.1 - *2021-06-01*

- Standardise files with files in sous-chefs/repo-management

## 2.1.0 - *2021-03-10*

- Sous Chefs Adoption
- Update InSpec tests

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
