
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents

AESD_ASSIGNMENTS_VERSION = 54cc283a3cd9a762df1c949399d6e42104ae1b16
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-5013/final-project-assignment-shubjais.git
AESD_ASSIGNMENTS_SITE_METHOD = git


define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/socket_server all
endef

#TODO: Add required executables or scripts below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
<<<<<<< HEAD
	$(INSTALL) -m 0755 $(@D)/socket_server/server-socket $(TARGET_DIR)/bin
=======
	$(INSTALL) -m 0755 $(@D)/client-socket/client-socket $(TARGET_DIR)/bin
>>>>>>> Changed commit hash to include client-socket utility
endef


$(eval $(generic-package))
