#! /bin/sh

set -o errexit
set -o nounset
set -o xtrace

export SYNOPSYS_HOME=/usr/synopsys
export VERDI_HOME=$SYNOPSYS_HOME/verdi-L-2016.06-1
export LD_LIBRARY_PATH=$VERDI_HOME/share/PLI/VCS/LINUX64
export DC_HOME=$SYNOPSYS_HOME/dc-L-2016.03-SP1
export DC_BIN=$DC_HOME/amd64/syn/bin

/usr/synopsys/11.9/amd64/bin/lmgrd -c /usr/local/flexlm/licenses/license.dat

vncserver -geometry 1680x1050 :2 -SecurityTypes None

#vncserver -geometry 1920x1280 :2 -SecurityTypes None,TLSNone
#vncserver -geometry 2560x1440 :2 -dpi 128
# vncserver -kill :*
# vncserver -list
# vncpasswd
# VNC password: zhenchen
# xtightvncviewer localhost::5902
# ssvncviewer localhost:2 -scale 2
# ssvncviewer localhost::5902 -scale 2

/bin/bash
