`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/29 19:29:36
// Design Name: 
// Module Name: FT60XDriver
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


module FT60XDriver(
        inout wire [31:0] DATA,
        output wire [3:0] BE_N,
        input wire D_CLK,
        input wire TXE_N,
        input wire RXF_N,
        output wire OE_N,
        output wire RD_N,
        output wire WR_N,
        output wire led_0
    );
    
    // Add user logic here
    wire clk = D_CLK;
    //wire clk = S_AXI_ACLK;
    
    reg led_reg=1'b0;
    reg [31:0] output_reg=1'b0;
    reg [31:0] input_reg=1'b0;
    
    reg OE = 1'b1;
    reg RD = 1'b1;
    reg WR = 1'b1;
    
    
    assign DATA = (!WR) ? output_reg : 32'hzzzzzzzz;
    assign BE_N = 4'b1111;   
    assign OE_N = OE;
    assign RD_N = RD;
    assign WR_N = WR;
    assign led_0 = led_reg;
    
    reg [31:0] ledcnt=1'b0;//����m�F�p
    reg [31:0] data_cnt=1'b0;
    localparam [31:0] cnt_max=32'd100000000;
    localparam [31:0] data_cnt_max=32'd65536;

    reg data_clk_reg = 1'b0;

    //cordic data
    wire data_clk;
//    reg [15:0] phase_reg=1'b0; //S2N13:16bit ����. -pi to pi, -> -3 to 3 -> �����t��2Bit + ����13Bit
    wire [31:0] dout;
    wire phase_tready;
    wire phase_tvalid;
    wire dout_tvalid;
    reg [15:0] dout_sin_reg=1'b0;
    reg [15:0] dout_cos_reg=1'b0;

    //1121
//    reg [15:0] dout_16reg=1'b0;
    
    localparam signed [16:0] offset_val = 17'b01000000000000000;
    reg signed [17:0] datamod = 1'b0;
    reg signed [15:0] result = 1'b0;
    
    //q = 29
    localparam signed [15:0] scaler = 16'h6487;
    reg signed [31:0] theta = 1'b0;
    reg signed [15:0] phase = 1'b0;


    assign phase_tvalid = 1'b1;
    
    always @(posedge data_clk) begin
        dout_sin_reg <= dout[31:16];
        dout_cos_reg <= dout[15:0];
        
        datamod <= $signed({1'b0, output_reg[15:0]}) - offset_val;
        result <= datamod[15:0];
        
        theta <= result * scaler;
        
        phase <= theta[30-:16];
        
    end

    cordic_0 cordic_sincos(
        .aclk(data_clk),
        .m_axis_dout_tvalid(dout_tvalid),
        .s_axis_phase_tdata(phase),
        .s_axis_phase_tvalid(phase_tvalid),
        .m_axis_dout_tdata(dout)
    );

//    aclk : IN STD_LOGIC;
//    s_axis_a_tvalid : IN STD_LOGIC;
//    s_axis_a_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
//    m_axis_result_tvalid : OUT STD_LOGIC;
//    m_axis_result_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    
    wire [15:0] sin_hf;
    wire [15:0] cos_hf;
//    conv_s1n14 conv_sin14_u0(
//        .aclk(data_clk),
//        .s_axis_a_tdata(dout_sin_reg),
//        .m_axis_result_tdata(sin_hf)
//    );

    conv_s1n14 conv_cos14_u0(
        .aclk(data_clk),
        .s_axis_a_tdata(dout_cos_reg),
        .m_axis_result_tdata(cos_hf)
    );

    s1n14_to_hf s1n14_to_hf_u0(
        .clk(data_clk),
        .s1n14(dout_sin_reg),
        .hf(sin_hf)
    );

    assign data_clk = data_clk_reg;

    //����M
    always@(posedge clk)
    begin
    
        //debug LED
        ledcnt<=(ledcnt==cnt_max-1'b1)? 1'b0: ledcnt+1'b1;
        led_reg<=(ledcnt==cnt_max-1'b1)? ~led_reg:led_reg;
    
        //���M�p���� FPGA -> FT60X
        if(TXE_N == 1'b0) begin
            WR <= 1'b0;//FT60X�ɏ�������         
            data_cnt<=(data_cnt==data_cnt_max-1'b1)? 1'b0: data_cnt+1'b1;
            data_clk_reg <= ~data_clk_reg;

            output_reg[15:0] <= data_cnt[15:0];
            output_reg[31:16] <= sin_hf;
            
            input_reg <= 32'b0;
        end 
    
        //��M�p���� FT60X -> FPGA
        else if(RXF_N == 1'b0) begin
            WR <= 1'b1;//FT60X����ǂݍ���
            OE <= 1'b0;//FT60X����̏o�͂�����
            RD <= 1'b0;//�ǂݍ��݊J�n
            
            input_reg <= DATA;
            data_cnt<=(data_cnt==cnt_max-1'b1)? 1'b0: data_cnt+1'b1;
        end
        
        //����M�Ȃ�
        else begin
            OE <= 1'b1;//FT60X����̏o�͂��~
            RD <= 1'b1;//�ǂݍ��݂Ȃ�
            WR <= 1'b1;//FT60X����ǂݍ���
        end
        
        if(input_reg==cnt_max-1'b1) begin
            led_reg <= ~led_reg;
        end
        
    end




    
endmodule