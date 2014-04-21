
include_recipe 'miner::default'

version = node['miner']['cpuminer']['version']

ark 'cpuminer' do
	url "https://github.com/pooler/cpuminer/archive/v#{version}.tar.gz"
	version version
	checksum node['miner']['cpuminer']['sha256sum']
	environment({
		'CFLAGS' => '-O3'
	})
	has_binaries [ 'minerd' ]
	action :install_with_make
end

template "/etc/init/minerd.conf" do
  source "cpuminer.upstart.conf.erb"
  mode 0640
  owner "root"
  group "root"
  notifies :stop, "service[minerd]", :immediately
end

service 'minerd' do
	action [ :enable, :start]
	provider Chef::Provider::Service::Upstart
end