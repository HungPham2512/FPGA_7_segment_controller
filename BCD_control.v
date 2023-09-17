`timescale 1ns / 1ps

module BCD_control(
input [3:0] digit1, //right digit // ones
input [3:0] digit2, //tens
input [3:0] digit3, //hundreds
input [3:0] digit4, //left digit // thousands
input [1:0] refreshcounter,

output reg [3:0] ONE_DIGIT = 0 //choose which input digit to display
);

always@ (refreshcounter)
begin
    case(refreshcounter)
        2'd0:
            ONE_DIGIT = digit1; //digit 1 value (right)
        2'd1:
            ONE_DIGIT = digit2; //digit 2 value    
        2'd2:
            ONE_DIGIT = digit3; //digit 3 value 
        2'd3:
            ONE_DIGIT = digit4; //digit 4 value (left)
     endcase
end

endmodule