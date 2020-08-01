module decoder_tb();

reg a_in[0:1];
wire y_out[0:3];

integer i;

//decoder D1 (.a_in(a_in [0]), .a_in(a_in[1]), .y_out(y_out[0]), .y_out(y_out[1]),.y_out(y_out[2]), .y_out(y_out[3]));

initial
begin
a_in = 2'b0 ;
//a_in1 = 1'b0;
end

initial
begin
	for (i = 0; i<4; i=i+1)
	begin
		a_in = i+1;
		#10;
	end
end

initial $monitor ("Input a_in0=%b, a_in1 = %b, Output y_out0=%b, y_out1 = %b, y_out2 = %b, y_out3 = %b", a_in0,a_in1, y_out0, y_out1,y_out2,y_out3 );

initial #100 $finish;
endmodule