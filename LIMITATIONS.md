# Limitations

## Package Availability

### DNF/YUM (RHEL family)

ELRepo is an RPM repository for Red Hat Enterprise Linux and compatible rebuild projects. The
official ELRepo setup instructions provide release packages for EL 8, EL 9, and EL 10.

* RHEL 8 / compatible rebuilds: ELRepo channels are available through the EL 8 repository URLs.
* RHEL 9 / compatible rebuilds: ELRepo channels are available through the EL 9 repository URLs.
* RHEL 10 / compatible rebuilds: ELRepo channels are available through the EL 10 repository URLs.

The cookbook generates these mirrorlist URLs:

* `https://elrepo.org/mirrors-elrepo.el<release>`
* `https://elrepo.org/mirrors-elrepo-extras.el<release>`
* `https://elrepo.org/mirrors-elrepo-kernel.el<release>`
* `https://elrepo.org/mirrors-elrepo-testing.el<release>`

The cookbook does not manage APT or Zypper repositories.

## Architecture Limitations

ELRepo publishes RPMs for Enterprise Linux. Package architecture availability varies by package
and channel; kernel and driver packages may not be present on every architecture.

## GPG Keys

EL 8 and EL 9 repositories use both ELRepo public keys:

* `https://elrepo.org/RPM-GPG-KEY-elrepo.org`
* `https://www.elrepo.org/RPM-GPG-KEY-v2-elrepo.org`

EL 10 uses only:

* `https://www.elrepo.org/RPM-GPG-KEY-v2-elrepo.org`

## Source/Compiled Installation

This cookbook manages repository configuration only. It does not build ELRepo packages from source.

## Known Issues

ELRepo states that packages are not compatible with CentOS Stream kernels or rebuild distributions
that break RHEL kernel ABI compatibility. For Oracle Linux, ELRepo packages should be used with the
Red Hat Compatible Kernel rather than Oracle UEK.
