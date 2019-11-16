#
# Copyright (C) 2019 Tony Feng <fengtons@gmail.com>
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=1
LUCI_TITLE:=LuCI Support for Vlmcsd
LUCI_DEPENDS:=+vlmcsd

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature

