module tri_logic(a, control, out);
input a, control;
output out;

tri_l tl /*(out,a,control);*/(.y_out(out), .b_in(a), .en(control));

//assign out = control ? a : 1'bZ;

endmodule
//******does not simulate when both are module structrues are combined to a single mobule.recursive intantiation error*******
/*always @ (control)
begin
if (control == 1)
out = a;
else
out = 1'bZ;*/
module tri_l(b_in,en,y_out);
input b_in, en;
output y_out;
assign y_out = en ? b_in : 1'bZ;
 endmodule