homeDir = '/home/vagrant'

execute "apt-get-force-install" do
	command "apt-get -f install"
end

execute "download-chrome" do
	command 'cd '+homeDir+' && wget -O - "https://dl.google.com/linux/direct/google-chrom-stable_current_amd64.deb | " | dkpg -i -'
end