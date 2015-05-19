


include ../../iverilog.mak


SRC         = ../hdl/fdce_wrapper.v

TB_SRC      = tb.v

all : tb.vcd

tb.vvp      : ${SRC} ${TB_SRC} 
	iverilog -o $@ $(XILINX_GLBL_V) ${SRC} ${TB_SRC} -y ${XILINX_UNISIMS_DIR}


tb.vcd  :   tb.vvp
	-@ vvp $?

view    : tb.vcd
	gtkwave tb.vcd -a tb.sav

clean	:
	-@ rm -f tb.vvp tb.vcd
