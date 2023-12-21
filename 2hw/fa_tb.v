`timescale 1ns / 1ns 
module fa_tb;

reg a, b, cin;
wire sum, cout;
integer i;

fa fa_DUT (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

initial begin

#10
a <= 0; b <= 0;

for (i = 0; i < 8; i = i + 1) begin
	
	{a, b, cin} = i;
	#10;
	
end

$stop;

end

endmodule