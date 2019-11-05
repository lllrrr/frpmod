include $(TOPDIR)/rules.mk

PKG_NAME:=frpmod
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=net
	CATEGORY:=Network
	TITLE:=frpmod for OpenWRT
	URL:=http://forums.mydigitallife.info/threads/50234
	DEPENDS:=
endef

define Package/$(PKG_NAME)/description
	frpmod is a modify frp config
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
        $(INSTALL_DIR) $(1)/usr/share/$(PKG_NAME)
	$(INSTALL_BIN) ./files/$(PKG_NAME).sh $(1)/usr/share/$(PKG_NAME)/$(PKG_NAME).sh
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
