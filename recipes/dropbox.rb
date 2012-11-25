home = '/home/vagrant'

system('cd '+home+' && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -')
# system(home+'/.dropbox-dist/dropboxd')
system('ln -s '+home+'/.dropbox-dist/dropboxd '+home+'/.kde/Autostart/dropboxd')