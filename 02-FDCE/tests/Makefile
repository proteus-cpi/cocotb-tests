
VERILOG_SOURCES = $(PWD)/../hdl/fdce_wrapper.v \
                  /opt/iverilog/XILINX/lib/verilog/src/glbl.v

TOPLEVEL=fdce_wrapper

MODULE=test_fdce_wrapper

COMPILE_ARGS    := -y /opt/iverilog/XILINX/lib/verilog/src/unisims

include $(COCOTB)/makefiles/Makefile.inc
include $(COCOTB)/makefiles/Makefile.sim
