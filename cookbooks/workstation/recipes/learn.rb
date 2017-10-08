package 'apache' do
	package_name 'httpd'
end

service 'apche' do
	service_name 'httpd'
	action [:enable, :start]
end

file '/var/www/html/index.html' do
	content 'Hello World new'
	mode '0755'
	owner 'user'
	group 'user'
end

file '/home/user/motd' do
end

execute 'not_if_example' do
	command 'echo hello world >> /home/user/motd'
	only_if 'test -r /home/user/motd'
end
