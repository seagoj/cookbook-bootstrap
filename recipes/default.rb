homeDir = '/home/vagrant'
configDir = '/home/vagrant/config'
online = true

package 'python-software-properties'

execute "add-apt-repo-cairo-dock" do
  command "add-apt-repository --yes ppa:cairo-dock-team/ppa"
end

if (online)
  execute "apt-update" do
    command "apt-get update"
  end
end

# base
package 'wget'
package 'unrar'
package 'git'
# package 'make'
# package 'cmake'
# package 'build-essential'
# package 'gperf'
# package 'imagemagick'
# package 'pkg-config'
# package 'glib-2.0'
# package 'cairo'


# desktop
package 'x11-common'
package 'awesome'
# execute "awesome-wm" do
#   command 'cd '+homeDir+' && wget -O - "http://awesome.naquadah.org/download/awesome-3.4.13.tar.bz2" | tar xvjf -'
# end
# package 'kubuntu-desktop'
package 'conky-all'

# # terminal
# package 'yakuake'

# # IDE
# package 'eclipse'
# package 'eclipse-jdt'
# package 'eclipse-pde'
# package 'eclipse-platform'
# package 'eclipse-rcp'

# # development
# package 'gdb'
# package 'golang'

# # media
# package 'vlc'
# package 'vlc-plugin-pulse'
# package 'mozilla-plugin-vlc'
# package 'gimp'
# package 'pidgin'

# # media server
# package 'sabnzbdplus'

# execute "mkdir-config" do
#   not_if {File.exists?(configDir)}
#   command "mkdir "+configDir
# end


# cookbook_file "/home/vagrant/SublimeText2.tar.bz2" do
#   source "Sublime Text 2.0.1 x64.tar.bz2"
# end

# execute "unpack-sublime-text-2" do
#   not_if {File.exists?("/usr/local/lib/SublimeText2")}
#   command "cd /home/vagrant/cookbooks/files/sublimetext/ && tar -xvjf SublimeText2.tar.bz2"
# end

# execute "copy-sublime-text-2" do
#   command("cp -r /vagrant/cookbooks/bootstrap/files/default/sublimetext/SublimeText2 /usr/local/lib/SublimeText2")
# end

# execute "symlink-SublimeText2-to-bin" do
#   not_if {File.exists?("/usr/local/bin/sublime_text")}
#   command "ln -s /usr/local/lib/SublimeText2/sublime_text /usr/local/bin/sublime_text"
# end