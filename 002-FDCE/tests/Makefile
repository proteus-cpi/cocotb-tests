XILINX_LIB      = /opt/iverilog/XILINX/lib/

VERILOG_SOURCES =   ${XILINX_LIB}/verilog/src/glbl.v \
                    $(PWD)/../hdl/fdce_wrapper.v 

TOPLEVEL=fdce_wrapper

MODULE=test_fdce_wrapper

COMPILE_ARGS    := -y ${XILINX_LIB}/verilog/src/unisims
#COMPILE_ARGS    := -y .

include $(COCOTB)/makefiles/Makefile.inc
include $(COCOTB)/makefiles/Makefile.sim
