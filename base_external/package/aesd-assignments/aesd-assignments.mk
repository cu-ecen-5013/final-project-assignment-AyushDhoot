
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents

AESD_ASSIGNMENTS_VERSION = 0d2774f59d3b1b50c83b45b8a235e1081baa3538
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-5013/final-project-assignment-shubjais.git
AESD_ASSIGNMENTS_SITE_METHOD = git


define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/client-socket all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/tmp102 all
endef

#TODO: Add required executables or scripts below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/client-socket/client-socket $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/tmp102/tmp102 $(TARGET_DIR)/bin
endef


$(eval $(generic-package))
