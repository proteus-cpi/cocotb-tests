
`timescale 1 ns / 1 ps

module test;

   wire Q,C,CE,CLR,D;
   reg clk;

   assign CE  = 1;
   assign CLR = 0;
   assign D   = !Q;
   
 fdce_wrapper  i_fdce_wrapper  (
		 .Q(Q),
		 .C(clk),
		 .CE(CE),
		 .CLR(CLR),
		 .D(D)
		 );
   
   //Run the test once
   initial
   begin

       clk=0;

       //Dump results of the simulation to ff.cvd
       $dumpfile("tb.vcd");
       $dumpvars;

       #100000
       #100000
       $finish;

     end


    //Generate periodic clock signal
     always
     begin
         #4
         clk=!clk;
     end


endmodule
