`timescale 1ns / 1ns 
module demux_1x4_tb;

reg f;
reg [1:0] sel;
wire a, b, c, d;
integer i;

demux_1x4 demux_1x4_DUT (.f(f), .sel(sel), .a(a), .b(b), .c(c), .d(d));

initial begin

#10
f <= 0; sel <= 0;

for (i = 0; i < 8; i = i + 1) begin
	
	{f, sel} = i;
	#10;
	
end

$stop;

end

endmodule