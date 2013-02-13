# Install Redis
package "redis-server" do
  action :install
end

# Run bundle command
script "bundle" do
  interpreter "bash"
  cwd "/vagrant"
  code "bundle install"
end

execute "disable-default-site" do
  command "sudo a2dissite default"
  notifies :reload, resources(:service => "apache2"), :delayed
end

web_app "cr-search" do
  docroot "/vagrant/public"
  template "cr-search.conf.erb"
  notifies :reload, resources(:service => "apache2"), :delayed
end