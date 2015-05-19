import cocotb
from cocotb.triggers import Timer

@cocotb.test()
def my_first_test(dut):
    """
    Try accessing the design
    """
    dut.log.info("Test FDCE!")
    
    d           = 0

    dut.D       = d
    dut.C       = 0
    dut.CE      = 1
    dut.CLR     = 0
    yield Timer(1000)

    dut.log.info("Test FDCE!")

    for cycle in range(256):
        yield Timer(9000)
        dut.C = 1
        yield Timer(1000)

        d = 0 if d == 1 else 1

        dut.D = d

        yield Timer(10000)
        dut.C = 0




    dut.log.info("Running test!")
