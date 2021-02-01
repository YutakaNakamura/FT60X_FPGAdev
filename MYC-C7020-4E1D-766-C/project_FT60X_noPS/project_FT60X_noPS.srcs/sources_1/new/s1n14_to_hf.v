`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/01 21:45:10
// Design Name: 
// Module Name: s1n14_to_hf
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module s1n14_to_hf(
    input wire clk, input wire [15:0] s1n14, output wire [15:0] hf
    );
    reg [15:0] hf_reg = 1'b0;
	reg s1n14_zero = 1'b0;
    reg s1n14_sign= 1'b0;
	reg [14:0] s1n14_norm = 1'b0;
	
	always@(posedge clk)
	begin
		s1n14_zero<=(s1n14==18'b0)?	1'b1:1'b0;
		s1n14_sign<=(s1n14[15]==1'b1)? 1'b1:1'b0;
		s1n14_norm<=(s1n14[15]==1'b1)? (~s1n14[14:0])+1'b1:s1n14[14:0];
		
		if		(s1n14_zero==1'b1)		hf_reg<=32'b0;
		else if	(s1n14_norm[14]==1'b1)	hf_reg<={s1n14_sign,5'd15,s1n14_norm[13:4]};
		else if	(s1n14_norm[13]==1'b1)	hf_reg<={s1n14_sign,5'd14,s1n14_norm[12:3]};
		else if	(s1n14_norm[12]==1'b1)	hf_reg<={s1n14_sign,5'd13,s1n14_norm[11:2]};
		else if	(s1n14_norm[11]==1'b1)	hf_reg<={s1n14_sign,5'd12,s1n14_norm[10:1]};
		else if	(s1n14_norm[10]==1'b1)	hf_reg<={s1n14_sign,5'd11,s1n14_norm[9:0]};
		else if	(s1n14_norm[9]==1'b1)	hf_reg<={s1n14_sign,5'd10,s1n14_norm[8:0],1'b0};
		else if	(s1n14_norm[8]==1'b1)	hf_reg<={s1n14_sign,5'd9,s1n14_norm[7:0],2'b0};
		else if	(s1n14_norm[7]==1'b1)	hf_reg<={s1n14_sign,5'd8,s1n14_norm[6:0],3'b0};
		else if	(s1n14_norm[6]==1'b1)	hf_reg<={s1n14_sign,5'd7,s1n14_norm[5:0],4'b0};
		else if	(s1n14_norm[5]==1'b1)	hf_reg<={s1n14_sign,5'd6,s1n14_norm[4:0],5'b0};
		else if	(s1n14_norm[4]==1'b1)	hf_reg<={s1n14_sign,5'd5,s1n14_norm[3:0],6'b0};
		else if	(s1n14_norm[3]==1'b1)	hf_reg<={s1n14_sign,5'd4,s1n14_norm[2:0],7'b0};
		else if	(s1n14_norm[2]==1'b1)	hf_reg<={s1n14_sign,5'd3,s1n14_norm[1:0],8'b0};
		else if	(s1n14_norm[1]==1'b1)	hf_reg<={s1n14_sign,5'd2,s1n14_norm[0],9'b0};
		else if	(s1n14_norm[0]==1'b1)	hf_reg<={s1n14_sign,5'd1,10'b0};
		else hf_reg<=32'b0;
	end

	assign hf=hf_reg;
    
endmodule
