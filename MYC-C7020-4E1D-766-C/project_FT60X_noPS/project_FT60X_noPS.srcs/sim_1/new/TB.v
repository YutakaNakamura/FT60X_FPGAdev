`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/16 21:50:18
// Design Name: 
// Module Name: TB
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


module TB(

    );
    
    reg clk=1'b0;
    parameter CYCLE=8;
    always#(CYCLE/2) clk<=~clk;
    
    reg switch=1'b0;
    
//    reg [15:0] phase1_reg=1'b0; //S2N13:16bit ì¸óÕ. -pi to pi, -> -3 to 3 -> ïÑçÜïtÇ´2Bit + è≠êî13Bit
//    wire [31:0] dout1;
//    wire phase1_tready;
//    wire phase1_tvalid;
//    wire dout1_tvalid;
//    reg [15:0] dout1_sin_reg=1'b0;
//    reg [15:0] dout1_cos_reg=1'b0;
    
//    always @(clk) begin
//        dout1_cos_reg <= dout1[31:16];
//        dout1_sin_reg <= dout1[15:0];
//    end
                                    
    wire [31:0] data_out;
    wire [3:0] be_n;
    wire txe_n;
    wire rxf_n;
    wire oe_n;
    wire rd_n;
    wire wr_n;
    wire led;
    
    assign txe_n = 1'b0;
    assign rxf_n = 1'b1;
    
    FT60XDriver DUnit(
        .DATA(data_out),
        .BE_N(be_n),
        .D_CLK(clk),
        .TXE_N(txe_n),
        .RXF_N(rxf_n),
        .OE_N(oe_n),
        .RD_N(rd_n),
        .WR_N(wr_n),
        .led_0(led)
        );
    
    reg [15:0] dout_sin_reg=1'b0;
    reg [15:0] dout_16reg=1'b0;
    
//    localparam signed [16:0] offset_val = 17'b01000000000000000;
//    reg signed [17:0] datamod = 1'b0;
//    reg signed [15:0] result = 1'b0;
    
//    //q = 29
//    localparam signed [15:0] scaler = 16'h6487;
//    reg signed [31:0] theta = 1'b0;
//    reg signed [15:0] phase = 1'b0;
    
    always @(posedge clk) begin
        
        dout_sin_reg <= data_out[31:16];
        dout_16reg <= data_out[15:0];
        
//        datamod <= $signed({1'b0, dout_16reg}) - offset_val;
//        result <= datamod[15:0];
        
//        theta <= result * scaler;
        
//        phase <= theta[30-:16];
        
    end
    
    
//    cordic_0 cordic_sincos_u1(
//        .aclk(clk),
//        .m_axis_dout_tvalid(dout1_tvalid),
//        .s_axis_phase_tdata(phase1_reg),
//        .s_axis_phase_tvalid(phase1_tvalid),
//        .m_axis_dout_tdata(dout1)
//        );
    
//      PORT (
//    aclk : IN STD_LOGIC;
//    s_axis_phase_tvalid : IN STD_LOGIC;
//    s_axis_phase_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
//    m_axis_dout_tvalid : OUT STD_LOGIC;
//    m_axis_dout_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
//  );
    
    
    
//    assign phase1_tvalid = 1'b1;
    
    initial 
    begin
        
        switch <= 1'b0;
        repeat(200000) 
        begin
            #CYCLE;
//            phase1_reg <= phase1_reg + 16'h0100;
            
        end

        
//        switch <= 1'b1;
//        repeat(500) #CYCLE;
//        switch <= 1'b0;
//        repeat(600) #CYCLE;
//        switch <= 1'b1;
//        repeat(100) #CYCLE;
        $finish;
    end
    
endmodule



