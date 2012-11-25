homeDir = '/home/vagrant'

cookbook_file homeDir+"/.conkyrc" do
    source "conky/.conkyrc"
    mode 0755
end

execute "copy-.lua-to-home" do
  command "cp -r /vagrant/cookbooks/bootstrap/files/default/conky/.lua "+homeDir+"/home/vagrant""/.lua"
end

execute "copy-.conky-to-home" do
  command "cp -r /vagrant/cookbooks/bootstrap/files/default/conky/.conky "+homeDir+"/.conky"
end
