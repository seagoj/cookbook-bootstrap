package 'cairo-dock'
package 'cairo-dock-plug-ins'

execute "configure-cairo-dock" do
	command "cp -r /vagrant/cookbooks/bootstrap/files/cairo-dock/.config ~/"
end