
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = 2e02b0821207b8a79865905532cea18dabf5d33f
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-5013/final-project-assignment-shubjais.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_LDFLAGS=$(LDFLAGS_FOR_BUILD) -lpthread -lrt

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/socket_server LDFLAGS="$(AESD_ASSIGNMENTS_LDFLAGS)" all
endef

#TODO: Add required executables or scripts below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/socket_server/server-socket $(TARGET_DIR)/bin
endef


$(eval $(generic-package))
