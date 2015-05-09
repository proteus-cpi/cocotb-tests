`timescale 1 ps / 1 ps


module addsub
(
 input [7:0]      dataa,
 input [7:0]      datab,
 input            add_sub, // if this is 1, add; else subtract
 input            clk,
 output reg [8:0] result
);

   always @ (posedge clk)
     begin
        if (add_sub)
          result <= dataa + datab;
        else
          result <= dataa - datab;
     end

     initial begin
         $info("Starting in addsub");
         $dumpfile("waveform.vcd");
         $dumpvars(0,addsub);
     end

endmodule // addsub
