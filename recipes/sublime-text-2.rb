execute "copy-sublime-text-2" do
  command("cp -r /vagrant/cookbooks/bootstrap/files/default/sublime-text-2/SublimeText2 /usr/local/lib/SublimeText2")
end

execute "symlink-SublimeText2-to-bin" do
  not_if {File.exists?("/usr/local/bin/sublime_text")}
  command "ln -s /usr/local/lib/SublimeText2/sublime_text /usr/local/bin/sublime_text"
end