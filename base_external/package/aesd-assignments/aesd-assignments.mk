
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = fa3a173dbeeeec465d14947cca079bd58d5987b6
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-5013/final-project-assignment-shubjais.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_LDFLAGS=$(LDFLAGS_FOR_BUILD) -lpthread -lrt

AESD_ASSIGNMENTS_MODULE_SUBDIRS = finalproject-char-driver/

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/socket_server LDFLAGS="$(AESD_ASSIGNMENTS_LDFLAGS)" all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/logging LDFLAGS="$(AESD_ASSIGNMENTS_LDFLAGS)" all
endef

#TODO: Add required executables or scripts below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/socket_server/server_socket $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/logging/logging $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/S99aesdcharmod $(TARGET_DIR)/etc/init.d/S99aesdcharmod
	$(INSTALL) -m 0755 $(@D)/logging_start_stop $(TARGET_DIR)/etc/init.d/S99logging
	$(INSTALL) -m 0755 $(@D)/server_socket_start_stop $(TARGET_DIR)/etc/init.d/S99serversocket
endef

$(eval $(kernel-module))
$(eval $(generic-package))
