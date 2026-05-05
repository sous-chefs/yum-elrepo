# yum_elrepo_testing

Manages the `elrepo-testing` yum repository.

## Actions

| Action    | Description                    |
|-----------|--------------------------------|
| `:create` | Creates the repository default |
| `:remove` | Removes the repository         |

## Properties

| Property | Type | Default | Description |
|----------|------|---------|-------------|
| `repositoryid` | String | `'elrepo-testing'` | Repository ID and repo file name |
| `description` | String | EL major derived | Repository description |
| `mirrorlist` | String | EL major derived | ELRepo mirrorlist URL |
| `baseurl` | String, Array | `nil` | Optional base URL override |
| `gpgkey` | String, Array | EL major derived | GPG key URL or URLs |
| `gpgcheck` | true, false | `true` | Enables package GPG checking |
| `enabled` | true, false | `true` | Enables the repository |
| `cost`, `exclude`, `enablegroups`, `failovermethod`, `http_caching`, `include_config`, `includepkgs`, `keepalive`, `max_retries`, `metadata_expire`, `mirror_expire`, `priority`, `proxy`, `proxy_username`, `proxy_password`, `sslcacert`, `sslclientcert`, `sslclientkey`, `sslverify`, `timeout` | passthrough | `nil` | Optional `yum_repository` properties |

## Examples

```ruby
yum_elrepo_testing 'default'

yum_elrepo_testing 'disabled' do
  enabled false
end
```
