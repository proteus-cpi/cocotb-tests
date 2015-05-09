import cocotb
from cocotb.triggers import Timer

@cocotb.test()
def my_first_test(dut):
    """
    Try accessing the design
    """
    a   = 0;
    b   = 10;
    dut.add_sub = 1
    dut.dataa = a
    dut.datab = b
    yield Timer(10)
    dut.clk = 0

    dut.log.info("Test ADD!")
    for cycle in range(256):
        yield Timer(9)
        dut.clk = 1
        yield Timer(1)

        if (int(dut.result) != (a + b)):
            print "dataa = {}/{}, datab = {}/{}, result =  \
                {}".format(int(dut.dataa), a, int(dut.datab), b,  int(dut.result))

        yield Timer(10)
        dut.clk = 0

        a   = (a + 1) % 256
        b   = (b + 1) % 256

        dut.dataa = a
        dut.datab = b



    dut.log.info("Running test!")
