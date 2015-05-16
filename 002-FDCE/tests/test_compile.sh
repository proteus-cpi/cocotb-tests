#
# compile
#
iverilog -o test \
    ../hdl/fdce_wrapper.v /opt/iverilog/XILINX/lib/verilog/src/glbl.v \
    -y /opt/iverilog/XILINX/lib/verilog/src/unisims

#
# run the simulation
#
vvp ./test

