# Migration

## Breaking changes

`yum-elrepo` has migrated from recipes and node attributes to custom resources. The cookbook no
longer ships `recipes/` or `attributes/`.

Replace recipe usage with resource declarations:

```ruby
# Before
include_recipe 'yum-elrepo'
include_recipe 'yum-elrepo::extras'
include_recipe 'yum-elrepo::kernel'
include_recipe 'yum-elrepo::testing'

# After
yum_elrepo 'default'
yum_elrepo_extras 'default'
yum_elrepo_kernel 'default'
yum_elrepo_testing 'default'
```

Replace node attributes with resource properties:

```ruby
# Before
node.default['yum']['elrepo']['enabled'] = true
node.default['yum']['elrepo']['baseurl'] = 'https://internal.example.com/elrepo'
node.default['yum']['elrepo']['sslverify'] = false
include_recipe 'yum-elrepo'

# After
yum_elrepo 'internal' do
  enabled true
  baseurl 'https://internal.example.com/elrepo'
  mirrorlist nil
  sslverify false
end
```

The test cookbook shows the new primary workflow in
`test/cookbooks/test/recipes/default.rb`.
