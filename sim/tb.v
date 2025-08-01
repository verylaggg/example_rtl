/******************************************************************************
* |----------------------------------------------------------------------------|
* |                      Copyright (C) 2024-2025 VeryLag.                      |
* |                                                                            |
* | THIS SOURCE CODE IS FOR PERSONAL DEVELOPEMENT; OPEN FOR ALL USES BY ANYONE.|
* |                                                                            |
* |   Feel free to modify and use this code, but attribution is appreciated.   |
* |                                                                            |
* |----------------------------------------------------------------------------|
*
* Author : VeryLag (verylag0401@gmail.com)
* 
* Creat : 2025/04/03
* 
* Description : testbench
* 
******************************************************************************/
`timescale 1ns/1ns
module tb();

reg [3:0] cnt;

initial begin
    cnt = 'h0;
    forever #10 cnt = cnt + 1;
end

always @ (cnt) begin
    $display ("[testbench] @ %0t: cnt = 'h%0h", $time, cnt);
    if (cnt == 'hf) $finish;
end

initial begin
    $timeformat(-9, 2, " ns", 0);
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
end

endmodule

