
BUILDER_DIR = /opt/installbuilder-20.4.0
DEB_FILE = NthEye-1.0-osx-installer.app.zip

TGT = $(BUILDER_DIR)/output/$(DEB_FILE)
PROJECT_FILE = NthEye.xml

all: $(TGT)

all_components = \
	icon.png \
	ntheye.desktop \
	NthEhe.xml \
	bin\NthEye.jar \
	bin\libjfxwebkit.dylib \
	java.xml

$(PROJECT_FILE): NthEye-osx.xml
	sed 's#@@installersource@@#$(PWD)#' $? > $@

$(TGT): $(ALL_COMPONENTS) $(PROJECT_FILE)
	$(BUILDER_DIR)/bin/builder build $(PROJECT_FILE) deb

