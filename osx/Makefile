
BUILDER_DIR = /opt/installbuilder-20.4.0
DEB_FILE = NthEye-1.0-osx-installer.app.zip

TGT = $(BUILDER_DIR)/output/$(DEB_FILE)
PROJECT_FILE = NthEye.xml

TGT_DMG = NthEye-1.0.dmg

all: dmg

dmg: $(TGT_DMG)
app: $(TGT)

ALL_COMPONENTS = \
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

ALL_COMPONENT_DMG = \
	NthEye.icns \
	bin/NthEye.jar \
	bin/libjfxwebkit.dylib \
	java-osx

$(TGT_DMG): $(ALL_COMPONENT_DMG)
	java-osx/bin/jpackage -t dmg \
		-i bin \
		--app-version 1.0 \
		--description NthEye \
		-n NthEye \
		--vendor NthEye \
		--icon NthEye.icns \
		--main-jar NthEye.jar \
		--main-class org.eclipse.jdt.internal.jarinjarloader.JarRsrcLoader \
		--mac-package-identifier org.eclipse.jdt.internal.jarinjarloader.JarRsrcLoader \
		--mac-package-name NthEye 
	@echo "$@ is completed"

