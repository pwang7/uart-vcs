#! /bin/sh

set -o errexit
set -o nounset
set -o xtrace

    # -e PROJ_ROOT_PATH \
    # -e RTL_PATH \
    # -e INCLUDE_PATH \
    # -e LIBRARY_PATH \
    # -e TB_FILE \
    # -e BUILD_PATH \
    # -e TOP_MODULE \
    # -e CLK_NAME \
    # -e CLK_PERIOD \
    # -e RST_NAME \
    # -e DC_HOME \
    # -e VERDI_HOME \
docker run --rm -it -p 5902:5902 --hostname lizhen --mac-address 02:42:ac:11:00:02 \
    -v `pwd`:`pwd` \
    -v `realpath ~/Downloads/rust_cargo/rtl/apt`:/etc/apt \
    -w `pwd` \
    --entrypoint `pwd`/synopsys_pre_run.sh \
    phyzli/ubuntu18.04_xfce4_vnc4server_synopsys2016
