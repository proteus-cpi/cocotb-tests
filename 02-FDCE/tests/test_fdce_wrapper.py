import cocotb
from cocotb.triggers import Timer

@cocotb.test()
def my_first_test(dut):
    """
    Try accessing the design
    """
    dut.log.info("Test FDCE!")
    
    dut.Q       = 0
    dut.C       = 0
    dut.CE      = 1
    dut.CLR     = 0
    yield Timer(1000)

    dut.log.info("Test FDCE!")

    for cycle in range(256):
        yield Timer(9000)
        dut.C = 1
        yield Timer(1000)

        yield Timer(10000)
        dut.C = 0




    dut.log.info("Running test!")
