package 'ntp'

package 'tree' do
  action :install
end

package 'git'

file '/etc/motd' do
  content 'This server is the property of Estimulo IT.'
  action :create
end

service 'ntpd' do
  action [ :enable, :start ]
end
