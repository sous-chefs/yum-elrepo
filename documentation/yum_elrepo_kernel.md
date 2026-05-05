# yum_elrepo_kernel

Manages the `elrepo-kernel` yum repository.

## Actions

| Action    | Description                    |
|-----------|--------------------------------|
| `:create` | Creates the repository default |
| `:remove` | Removes the repository         |

## Properties

* `repositoryid` - Repository ID and repo file name. Defaults to
  `'elrepo-kernel'`.
* `description` - Repository description. Defaults from the EL major version.
* `mirrorlist` - ELRepo mirrorlist URL. Defaults from the EL major version.
* `baseurl` - Optional base URL override. Accepts a string or array.
* `gpgkey` - GPG key URL or URLs. Defaults from the EL major version.
* `gpgcheck` - Enables package GPG checking. Defaults to `true`.
* `enabled` - Enables the repository. Defaults to `true`.
* Yum repository passthrough options - Optional `yum_repository` properties:
  `cost`, `exclude`, `enablegroups`, `failovermethod`, `http_caching`,
  `include_config`, `includepkgs`, `keepalive`, `max_retries`,
  `metadata_expire`, `mirror_expire`, `priority`, `proxy`, `proxy_username`,
  `proxy_password`, `sslcacert`, `sslclientcert`, `sslclientkey`, `sslverify`,
  and `timeout`.

## Examples

```ruby
yum_elrepo_kernel 'default'

yum_elrepo_kernel 'disabled' do
  enabled false
end
```
