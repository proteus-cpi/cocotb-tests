include ../../iverilog.mak


VERILOG_SOURCES =   ${XILINX_GLBL_V} \
                    $(PWD)/../hdl/fdce_wrapper.v \
                    ./tb.v

TOPLEVEL=fdce_wrapper

MODULE=test_fdce_wrapper

COMPILE_ARGS    := -y ${XILINX_UNISIMS_DIR} -y .

include $(COCOTB)/makefiles/Makefile.inc
include $(COCOTB)/makefiles/Makefile.sim

tb.vcd  : results.xml

view    : tb.vcd
	-@ gtkwave tb.vcd -a tb.sav

clean   ::
	-@ rm *.pyc *.vcd
	-@ rm -rf  sim_build

distclean   : clean
	-@ rm results.xml
