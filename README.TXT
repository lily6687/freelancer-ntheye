NthEye installation with InstallBuilder instructions

Windows
  OS: Windows 7 / 10
  VMWare InstallBuilder for Windows 19 / 20
  InstallBuilder java redistribution 14.01 for windows from http://installbuilder.com/java/
  Steps:
  1. mkdir c:\proctorx\win
  2. copy the following to this foloer
    -- icon.ico          (from proctorx/res/icons)
    -- java.xml          (downloaded from freelancer files)
    -- makentheye.bat    (the command to make installation package, from freelancer files)
    -- NthEye.jar        (exported from eclipse)
    -- NthEye-win.xml    (InstallBuilder project file, downloaded from freelancer files)
    -- java-windows      (from InstallBuilder java redistributable)
    -- native            (from source code)
  3. run makentheye.bat in c:\proctorx\win folder
  4. Get the NthEye-1.0-windows-x64-installer.exe file from InstallBuilder output folder


Linux
  OS: Ubuntu 18.0.4
  VMWare InstallBuilder for Linux 20
  InstallBuilder java redistribution 14.01 for linux from http://installbuilder.com/java/
  Openjfx sdk 14.0.1 for linux from https://gluonhq.com/products/javafx/
  Steps:
  1. cd linux
  2. copy the following files to this folder
    -- java-linux-x64    (from InstallBuilder)
  3. copy the following files to the bin subfolder
    -- NthEye.jar        (for linux, from eclipse)
    -- *.so              (from the lib of javafx)
  4. Set the BUILDER_DIR to the installation path of installbuilder in Makefile
  5. make
  5. Get the NthEye_1.0-0_amd64.deb from InstallBuilder output


Mac osx
  OS: MAC OSX 10.15
  VMWare InstallBuilder for Mac 20
  InstallBuilder java redistribution 14.01 for Mac from http://installbuilder.com/java/
  Openjfx sdk 14.0.1 for Mac from https://gluonhq.com/products/javafx/
  steps:
  1. make a working folder
  2. copy the following files to this folder
    -- makeosx.sh        (command to make osx installer, downloaded from freelancer files, chmod +x)
    -- NthEye-osx.xml    (InstallBuilder project file, downloaded from freelancer files
                          replacing @@installersource@@ with work folder)
    -- java-osx          (from openjfx)
    -- NthEye.icns       (Mac icon, downloaded from freelancer files)
    -- java.xml          (download java-osx.xml from freelancer files, rename to java.xml)
    -- bin               (a subfolder)
  3. copy the following files to the bin subfolder
    -- NthEye.jar        (for mac, from eclipse)
    -- *.dylib           (from the lib of javafx)
  4. run makeosx.sh in the working folder
  5. Get NthEye-1.0-osx-installer.app from InstallBuilder output



