GPFSDIR=$(shell dirname $(shell which mmlscluster))
CURDIR=$(shell pwd)
INSTALL_DIR=/var/mmfs/etc
LOCL_DIR=/usr/local/bin

install: gpfs_functions sseom

gpfs_functions:   .FORCE
	cp -pf $(CURDIR)/gpfs_functions $(INSTALL_DIR)/gpfs_functions
	cp -pf $(CURDIR)/sseom $(LOCL_DIR)/sseom
	chmod +x $(LOCL_DIR)/sseom

clean:
	rm -f $(INSTALL_DIR)/gpfs_functions
	rm -f $(LOCL_DIR)/sseom

.FORCE:


