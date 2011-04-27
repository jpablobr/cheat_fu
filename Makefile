BIN = bin/cheat_fu
DEST = /usr/bin/cheat_fu

install:
	@cp ${BIN} ${DEST} && echo Installed to ${DEST}

build:
	@cp ${BIN} debian/${DEST}
	@dpkg-deb --build debian
	@rm cheat_fu_0.*
uninstall:
	@rm ${DEST} && echo Uninstalled
