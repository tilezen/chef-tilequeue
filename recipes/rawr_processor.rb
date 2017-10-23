include_recipe 'tilequeue::install'

include_recipe 'runit::default'

runit_service 'rawr' do
  action          [:enable]
  log             true
  default_logger  true
  sv_timeout      node[:tilequeue][:runit][:timeout]
end