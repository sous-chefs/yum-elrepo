# yum_elrepo

Manages the `elrepo` yum repository.

## Actions

| Action    | Description                    |
|-----------|--------------------------------|
| `:create` | Creates the repository default |
| `:remove` | Removes the repository         |

## Properties

* `repositoryid` - Repository ID and repo file name. Defaults to `'elrepo'`.
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
yum_elrepo 'default'

yum_elrepo 'internal' do
  baseurl 'https://internal.example.com/elrepo'
  mirrorlist nil
  sslverify false
end
```
