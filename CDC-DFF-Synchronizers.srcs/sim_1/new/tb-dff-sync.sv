`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2025 00:16:20
// Design Name: 
// Module Name: tb-dff-sync
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


module tb_dff_sync;

   logic D;
   logic q;
   logic clk_i;
   logic clk_src;
   logic rst;

 // Generate reset and clock

   initial begin
      clk_i <= 0;
      clk_src <= 0;
      D = 0;
      rst <= 0;
      #12;
      rst <= 1;
   end

  always #10 clk_i <= ~ clk_i;

 dff_sync DUT(
           .clk_i (clk_i),
           .rst (rst),
           .D (D),
           .q (q)
 );

// Generate D, & observe Q
// Generate D on different clock speed & feed it into 2-stage FF synchroniser

always #3 clk_src = ~ clk_src;

always @(posedge clk_src) begin
   D <= $urandom();
end





endmodule
