
`timescale 1 ns / 1 ps

module test;

   //Run the test once
   initial
   begin

       //Dump results of the simulation to ff.cvd
       $dumpfile("tb.vcd");
       $dumpvars;

   end

endmodule
