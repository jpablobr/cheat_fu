BIN = bin/cheat_fu
DEST = /usr/bin/cheat_fu

install:
	@cp ${BIN} ${DEST} && echo Installed to ${DEST}

uninstall:
	@rm ${DEST} && echo Uninstalled
