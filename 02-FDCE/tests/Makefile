XILINX_LIB      = /opt/Xilinx/14.4/ISE_DS/ISE

VERILOG_SOURCES =   ${XILINX_LIB}/verilog/src/glbl.v \
                    $(PWD)/../hdl/fdce_wrapper.v 

TOPLEVEL=fdce_wrapper

MODULE=test_fdce_wrapper

#COMPILE_ARGS    := -y ${XILINX_LIB}/verilog/src/unisims

include $(COCOTB)/makefiles/Makefile.inc
include $(COCOTB)/makefiles/Makefile.sim
