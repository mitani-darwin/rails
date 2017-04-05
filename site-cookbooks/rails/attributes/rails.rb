default['rails']['user']['name'] = "vagrant"
if attribute?('rails_version')
    default['rails']['version'] = node['rails_version']
else
    default['rails']['version'] = "5.0"
end
