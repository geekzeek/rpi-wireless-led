install-leader:
	chmod +x network/install.sh
	network/install.sh
	chmod +x leader/install.sh
	leader/install.sh
install-follower:
	chmod +x network/install.sh
	network/install.sh
	chmod +x follower/install.sh
	follower/install.sh
uninstall-leader:
	chmod +x network/uninstall.sh
	network/uninstall.sh
	chmod +x leader/uninstall.sh
	leader/uninstall.sh
uninstall-follower:
	chmod +x network/uninstall.sh
	network/uninstall.sh
	chmod +x follower/uninstall.sh
	follower/uninstall.sh