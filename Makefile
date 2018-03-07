GPFSDIR=$(shell dirname $(shell which mmlscluster))
CURDIR=$(shell pwd)
INSTALL_DIR=/var/mmfs/etc/

install: gpfs_functions     

gpfs_functions:   .FORCE
	cp -pf $(CURDIR)/gpfs_functions $(INSTALL_DIR)/gpfs_functions

clean:
	rm -f $(INSTALL_DIR)/gpfs_functions

.FORCE:


