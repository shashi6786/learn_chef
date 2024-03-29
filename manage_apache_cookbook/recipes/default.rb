apt_update 'Update the apt cache daily' do
	frequency 86_400
	action :periodic
end

package 'apache2'

service 'apache2' do
	action [:enable, :start]
end

#file '/var/www/html/index.html' do
#	content '<html>
#	<body>
#		<h1> Learning Chef</h1>
#	</body>
#	</html>'
#end

template '/var/www/html/index.html' do
	source 'index.html.erb'
end

