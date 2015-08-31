service 'ssh' do
  action :nothing
end

file '/var/hoge' do
  action :create
  notifies :restart, resources(service: 'ssh')
end

file '/var/hoge2' do
  action :create
end
