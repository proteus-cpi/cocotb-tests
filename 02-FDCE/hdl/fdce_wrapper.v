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
	$display("Hello, World");
	$finish ;
     end

endmodule
