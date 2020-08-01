module dec_mux (input [1:0]in, input [3:0]d, output wor z);


wire m[3:0];
/*wire d[3:0];
initial
begin
//in = 4'b0;
d = 4'b0;
end*/

decoder D1 (in, m[0]);//_in0), .y_out3(m), .y_out2(n), .y_out1(o), .y_out0(p));
decoder D2 (in, m[1]);
decoder D3 (in, m[2]);
decoder D4 (in, m[3]);
tri_l tl1 ( d[0], m[0] , z);
tri_l tl2 ( d[1], m[1] , z);
tri_l tl3 ( d[2], m[2] , z);
tri_l tl4 ( d[3], m[3] , z);

endmodule