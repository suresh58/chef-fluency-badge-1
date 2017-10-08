hostname = node[hostname]
file '/etc/motd' do
	path '/etc/motd'
	content "hostname of this computer #{hostname}"
end
