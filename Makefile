APP_SRC = usr/share/autologin-on-boot/
APP_DEST = ${DESTDIR}/usr/share/autologin-on-boot/

BIN_SRC = usr/bin/
BIN_DEST = ${DESTDIR}/usr/bin/

SYSTEM_SRC = etc/systemd/system/
SYSTEM_DEST = ${DESTDIR}/etc/systemd/system/

GETTY_SRC = etc/systemd/system/getty@tty1.service.d/
GETTY_DEST = ${DESTDIR}/etc/systemd/system/getty@tty1.service.d/

ETC_SRC = etc/
ETC_DEST = ${DESTDIR}/etc/

.PHONY: install

install:
	#install -d $(ETC_DEST)
	#install -m644 $(ETC_SRC)autologin-on-boot.conf $(ETC_DEST)

	install -d $(APP_DEST)
	install -m755 $(APP_SRC)booting $(APP_DEST)
	install -m755 $(APP_SRC)profile $(APP_DEST)
	install -m755 $(APP_SRC)getty $(APP_DEST)

	install -d $(SYSTEM_DEST)
	install -m644 $(SYSTEM_SRC)autologin-on-boot.service $(SYSTEM_DEST)

	install -d $(GETTY_DEST)
	install -m644 $(GETTY_SRC)autologin-on-boot.conf $(GETTY_DEST)

	install -d $(BIN_DEST)
	install -m755 $(BIN_SRC)autologin-on-boot $(BIN_DEST)

