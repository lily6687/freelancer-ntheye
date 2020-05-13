
BUILDER_DIR = /opt/installbuilder-20.4.0
DEB_FILE = NthEye_1.0-0_amd64.deb

TGT = $(BUILDER_DIR)/output/$(DEB_FILE)
PROJECT_FILE = NthEye.xml

all: $(TGT)

ALL_COMPONENTS = \
	icon.png \
	ntheye.desktop \
	bin/launcher.sh \
	bin/NthEye.jar \
	bin/libjfxwebkit.so \
	adrmdesktopshortcut.sh \
	java-linux-x64

$(PROJECT_FILE): NthEye-linux.xml
	sed 's#@@installersource@@#$(PWD)#' $? > $@

$(TGT): $(ALL_COMPONENTS) $(PROJECT_FILE)
	$(BUILDER_DIR)/bin/builder build $(PROJECT_FILE) deb
	@echo "Please get the installer from $(TGT)"

