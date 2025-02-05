`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2025 00:13:39
// Design Name: 
// Module Name: dff-sync
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


module dff_sync(

        input logic clk_i,
        input logic rst,
        input logic D,
        output logic q

    );

  logic Q;

  always_ff@(posedge clk_i) begin

   if(!rst) begin
     Q  <= 0;
     q <= 0;
   end
   else 
   
   begin
    Q <= D;               // 2 Stage FF synchorniser
    q <= Q;
   end

  end



endmodule
