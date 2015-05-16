`timescale 1 ns / 1 ps

module fdce_wrapper (
  output Q,
  
  input C,
  input CE,
  input CLR,
  input D
);

   FDCE my_FDCE (
		 .Q(Q),
		 .C(C),
		 .CE(CE),
		 .CLR(CLR),
		 .D(D)
		 );
   
   initial 
     begin
         $dumpfile("waveform.vcd");
         $dumpvars(0,fdce_wrapper);
     end

endmodule
