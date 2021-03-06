`timescale 1ns/1ps
module ram_weight (counter, weight_cal_state, rstn, clk, e, reff_0, reff_1, reff_2, reff_3, reff_4, reff_5, reff_6, reff_7, reff_8, reff_9, reff_10, reff_11, reff_12, reff_13, reff_14, reff_15,reff_16,reff_17,reff_18,reff_19,reff_20,reff_21,reff_22,reff_23,reff_24,reff_25,reff_26,reff_27,reff_28,reff_29,reff_30,reff_31, weight_in_0, weight_in_1, weight_in_2, weight_in_3, weight_in_4, weight_in_5, weight_in_6, weight_in_7, weight_in_8, weight_in_9, weight_in_10, weight_in_11, weight_in_12, weight_in_13, weight_in_14, weight_in_15 ,weight_in_16,weight_in_17,weight_in_18,weight_in_19,weight_in_20,weight_in_21,weight_in_22,weight_in_23,weight_in_24,weight_in_25,weight_in_26,weight_in_27,weight_in_28,weight_in_29,weight_in_30,weight_in_31);

input [11:0] counter;
input rstn, clk, weight_cal_state;
input [13:0] e;

input [13:0] reff_0;
input [13:0] reff_1;
input [13:0] reff_2;
input [13:0] reff_3;
input [13:0] reff_4;
input [13:0] reff_5;
input [13:0] reff_6;
input [13:0] reff_7;
input [13:0] reff_8;
input [13:0] reff_9;
input [13:0] reff_10;
input [13:0] reff_11;
input [13:0] reff_12;
input [13:0] reff_13;
input [13:0] reff_14;
input [13:0] reff_15;
input [13:0] reff_16;
input [13:0] reff_17;
input [13:0] reff_18;
input [13:0] reff_19;
input [13:0] reff_20;
input [13:0] reff_21;
input [13:0] reff_22;
input [13:0] reff_23;
input [13:0] reff_24;
input [13:0] reff_25;
input [13:0] reff_26;
input [13:0] reff_27;
input [13:0] reff_28;
input [13:0] reff_29;
input [13:0] reff_30;
input [13:0] reff_31;

output reg [31:0] weight_in_0;
output reg [31:0] weight_in_1;
output reg [31:0] weight_in_2;
output reg [31:0] weight_in_3;
output reg [31:0] weight_in_4;
output reg [31:0] weight_in_5;
output reg [31:0] weight_in_6;
output reg [31:0] weight_in_7;
output reg [31:0] weight_in_8;
output reg [31:0] weight_in_9;
output reg [31:0] weight_in_10;
output reg [31:0] weight_in_11;
output reg [31:0] weight_in_12;
output reg [31:0] weight_in_13;
output reg [31:0] weight_in_14;
output reg [31:0] weight_in_15;
output reg [31:0] weight_in_16;
output reg [31:0] weight_in_17;
output reg [31:0] weight_in_18;
output reg [31:0] weight_in_19;
output reg [31:0] weight_in_20;
output reg [31:0] weight_in_21;
output reg [31:0] weight_in_22;
output reg [31:0] weight_in_23;
output reg [31:0] weight_in_24;
output reg [31:0] weight_in_25;
output reg [31:0] weight_in_26;
output reg [31:0] weight_in_27;
output reg [31:0] weight_in_28;
output reg [31:0] weight_in_29;
output reg [31:0] weight_in_30;
output reg [31:0] weight_in_31;

//********************** MUX ***********************//	
wire [13:0] reff;
wire [31:0] weight_pre;
	
assign reff =   {14{(counter == 12'd2080)}} & reff_0 |
		{14{(counter == 12'd2081)}} & reff_1 |
		{14{(counter == 12'd2082)}} & reff_2 |		
		{14{(counter == 12'd2083)}} & reff_3 |
		{14{(counter == 12'd2084)}} & reff_4 |
		{14{(counter == 12'd2085)}} & reff_5 |		
		{14{(counter == 12'd2086)}} & reff_6 |	
		{14{(counter == 12'd2087)}} & reff_7 |
		{14{(counter == 12'd2088)}} & reff_8 |		
		{14{(counter == 12'd2089)}} & reff_9 |
		{14{(counter == 12'd2090)}} & reff_10 |
		{14{(counter == 12'd2091)}} & reff_11 |		
		{14{(counter == 12'd2092)}} & reff_12 |			
		{14{(counter == 12'd2093)}} & reff_13 |
		{14{(counter == 12'd2094)}} & reff_14 |		
		{14{(counter == 12'd2095)}} & reff_15 |
		{14{(counter == 12'd2096)}} & reff_16 |
		{14{(counter == 12'd2097)}} & reff_17 |
		{14{(counter == 12'd2098)}} & reff_18 |
		{14{(counter == 12'd2099)}} & reff_19 |
		{14{(counter == 12'd2100)}} & reff_20 |
		{14{(counter == 12'd2101)}} & reff_21 |
		{14{(counter == 12'd2102)}} & reff_22 |
		{14{(counter == 12'd2103)}} & reff_23 |
		{14{(counter == 12'd2104)}} & reff_24 |
		{14{(counter == 12'd2105)}} & reff_25 |
		{14{(counter == 12'd2106)}} & reff_26 |
		{14{(counter == 12'd2107)}} & reff_27 |
		{14{(counter == 12'd2108)}} & reff_28 |
		{14{(counter == 12'd2109)}} & reff_29 |
		{14{(counter == 12'd2110)}} & reff_30 |
		{14{(counter == 12'd2111)}} & reff_31 ;
		
assign weight_pre =     {32{(counter == 12'd2080)}} & weight_in_0 |
			{32{(counter == 12'd2081)}} & weight_in_1 |
			{32{(counter == 12'd2082)}} & weight_in_2 |		
			{32{(counter == 12'd2083)}} & weight_in_3 |
			{32{(counter == 12'd2084)}} & weight_in_4 |
			{32{(counter == 12'd2085)}} & weight_in_5 |		
			{32{(counter == 12'd2086)}} & weight_in_6 |	
			{32{(counter == 12'd2087)}} & weight_in_7 |
			{32{(counter == 12'd2088)}} & weight_in_8 |		
			{32{(counter == 12'd2089)}} & weight_in_9 |
			{32{(counter == 12'd2090)}} & weight_in_10 |
			{32{(counter == 12'd2091)}} & weight_in_11 |		
			{32{(counter == 12'd2092)}} & weight_in_12 |			
			{32{(counter == 12'd2093)}} & weight_in_13 |
			{32{(counter == 12'd2094)}} & weight_in_14 |		
			{32{(counter == 12'd2095)}} & weight_in_15 |
			{32{(counter == 12'd2096)}} & weight_in_16 |
			{32{(counter == 12'd2097)}} & weight_in_17 |		
			{32{(counter == 12'd2098)}} & weight_in_18 |
			{32{(counter == 12'd2099)}} & weight_in_19 |
			{32{(counter == 12'd2100)}} & weight_in_20 |		
			{32{(counter == 12'd2101)}} & weight_in_21 |	
			{32{(counter == 12'd2102)}} & weight_in_22 |
			{32{(counter == 12'd2103)}} & weight_in_23 |		
			{32{(counter == 12'd2104)}} & weight_in_24 |
			{32{(counter == 12'd2105)}} & weight_in_25 |
			{32{(counter == 12'd2106)}} & weight_in_26 |		
			{32{(counter == 12'd2107)}} & weight_in_27 |			
			{32{(counter == 12'd2108)}} & weight_in_28 |
			{32{(counter == 12'd2109)}} & weight_in_29 |		
			{32{(counter == 12'd2110)}} & weight_in_30 |
			{32{(counter == 12'd2111)}} & weight_in_31 ;		
			
//********************** DSP ***********************//		
reg [31:0] weight;
wire [24:0] multiple;
wire [31:0] dsp_result;



assign multiple = {11'd0, e} * {11'd0, reff};
assign dsp_result = weight_pre + {7'd0, multiple};

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight <=   32'd0;
    else if(weight_cal_state == 1'b1)
	weight <=  dsp_result;
    else
        weight <=   weight;
    end 


//********************** Output Storage ***********************//
    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_0 <=  32'd0;
    else if(counter == 12'd2081)
	weight_in_0 <=  weight;
    else
        weight_in_0 <=  weight_in_0;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_1 <=  32'd0;
    else if(counter == 12'd2082)
	weight_in_1 <=  weight;
    else
        weight_in_1 <=  weight_in_1;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_2 <=  32'd0;
    else if(counter == 12'd2083)
	weight_in_2 <=  weight;
    else
        weight_in_2 <=  weight_in_2;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_3 <=  32'd0;
    else if(counter == 12'd2084)
	weight_in_3 <=  weight;
    else
        weight_in_3 <=  weight_in_3;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_4 <=  32'd0;
    else if(counter == 12'd2085)
	weight_in_4 <=  weight;
    else
        weight_in_4 <=  weight_in_4;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_5 <=  32'd0;
    else if(counter == 12'd2086)
	weight_in_5 <=  weight;
    else
        weight_in_5 <=  weight_in_5;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_6 <=  32'd0;
    else if(counter == 12'd2087)
	weight_in_6 <=  weight;
    else
        weight_in_6 <=  weight_in_6;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_7 <=  32'd0;
    else if(counter == 12'd2088)
	weight_in_7 <=  weight;
    else
        weight_in_7 <=  weight_in_7;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_8 <=  32'd0;
    else if(counter == 12'd2089)
	weight_in_8 <=  weight;
    else
        weight_in_8 <=  weight_in_8;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_9 <=  32'd0;
    else if(counter == 12'd2090)
	weight_in_9 <=  weight;
    else
        weight_in_9 <=  weight_in_9;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_10 <=  32'd0;
    else if(counter == 12'd2091)
	weight_in_10 <=  weight;
    else
        weight_in_10 <=  weight_in_10;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_11 <=  32'd0;
    else if(counter == 12'd2092)
	weight_in_11 <=  weight;
    else
        weight_in_11 <=  weight_in_11;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_12 <=  32'd0;
    else if(counter == 12'd2093)
	weight_in_12 <=  weight;
    else
        weight_in_12 <=  weight_in_12;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_13 <=  32'd0;
    else if(counter == 12'd2094)
	weight_in_13 <=  weight;
    else
        weight_in_13 <=  weight_in_13;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_14 <=  32'd0;
    else if(counter == 12'd2095)
	weight_in_14 <=  weight;
    else
        weight_in_14 <=  weight_in_14;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_15 <=  32'd0;
    else if(counter == 12'd2096)
	weight_in_15 <=  weight;
    else
        weight_in_15 <=  weight_in_15;
    end 
	
/*************************************************/	
   always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_16 <=  32'd0;
    else if(counter == 12'd2097)
	weight_in_16 <=  weight;
    else
        weight_in_16 <=  weight_in_16;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_17 <=  32'd0;
    else if(counter == 12'd2098)
	weight_in_17 <=  weight;
    else
        weight_in_17 <=  weight_in_17;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_18 <=  32'd0;
    else if(counter == 12'd2099)
	weight_in_18 <=  weight;
    else
        weight_in_18 <=  weight_in_18;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_19 <=  32'd0;
    else if(counter == 12'd2100)
	weight_in_19 <=  weight;
    else
        weight_in_19 <=  weight_in_19;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_20 <=  32'd0;
    else if(counter == 12'd2101)
	weight_in_20 <=  weight;
    else
        weight_in_20 <=  weight_in_20;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_21 <=  32'd0;
    else if(counter == 12'd2102)
	weight_in_21 <=  weight;
    else
        weight_in_21 <=  weight_in_21;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_22 <=  32'd0;
    else if(counter == 12'd2103)
	weight_in_22 <=  weight;
    else
        weight_in_22 <=  weight_in_22;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_23 <=  32'd0;
    else if(counter == 12'd2104)
	weight_in_23 <=  weight;
    else
        weight_in_23 <=  weight_in_23;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_24 <=  32'd0;
    else if(counter == 12'd2105)
	weight_in_24 <=  weight;
    else
        weight_in_24 <=  weight_in_24;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_25 <=  32'd0;
    else if(counter == 12'd2106)
	weight_in_25 <=  weight;
    else
        weight_in_25 <=  weight_in_25;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_26 <=  32'd0;
    else if(counter == 12'd2107)
	weight_in_26 <=  weight;
    else
        weight_in_26 <=  weight_in_26;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_27 <=  32'd0;
    else if(counter == 12'd2108)
	weight_in_27 <=  weight;
    else
        weight_in_27 <=  weight_in_27;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_28 <=  32'd0;
    else if(counter == 12'd2109)
	weight_in_28 <=  weight;
    else
        weight_in_28 <=  weight_in_28;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_29 <=  32'd0;
    else if(counter == 12'd2110)
	weight_in_29 <=  weight;
    else
        weight_in_29 <=  weight_in_29;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_30 <=  32'd0;
    else if(counter == 12'd2111)
	weight_in_30 <=  weight;
    else
        weight_in_30 <=  weight_in_30;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_31 <=  32'd0;
    else if(counter == 12'd2112)
	weight_in_31 <=  weight;
    else
        weight_in_31 <=  weight_in_31;
    end 
endmodule

