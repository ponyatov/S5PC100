# install

DEB_ARCH = https://cdimage.debian.org/cdimage/archive/$(DEBIAN_VER)/amd64/bt-dvd

GZ += $(DISTR)/debian-$(DEBIAN_VER)-amd64-DVD-1.iso.torrent
$(DISTR)/debian-$(DEBIAN_VER)-amd64-DVD-1.iso.torrent:
	$(CURL) $@ $(DEB_ARCH)/debian-$(DEBIAN_VER)-amd64-DVD-1.iso.torrent
GZ += $(DISTR)/debian-$(DEBIAN_VER)-amd64-DVD-2.iso.torrent
$(DISTR)/debian-$(DEBIAN_VER)-amd64-DVD-2.iso.torrent:
	$(CURL) $@ $(DEB_ARCH)/debian-$(DEBIAN_VER)-amd64-DVD-2.iso.torrent
GZ += $(DISTR)/debian-$(DEBIAN_VER)-amd64-DVD-3.iso.torrent
$(DISTR)/debian-$(DEBIAN_VER)-amd64-DVD-3.iso.torrent:
	$(CURL) $@ $(DEB_ARCH)/debian-$(DEBIAN_VER)-amd64-DVD-3.iso.torrent

GZ += $(DISTR)/$(LINUX_GZ)
$(DISTR)/$(LINUX_GZ):
	$(CURL) $@ $(LINUX_URL)/$(LINUX_GZ)

.PHONY: install update ref gz
install: doc ref gz
	$(MAKE) update
update:
	sudo apt update
	sudo apt install -uy `cat apt.Debian` $(APT)
ref: $(REF)
gz:  $(GZ)
