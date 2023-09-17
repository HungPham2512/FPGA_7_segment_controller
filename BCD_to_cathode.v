module BCD_to_cathode(
input [3:0] digit,
output reg [7:0] cathode = 0
);

always@ (digit)
begin
    case(digit)
        4'd0:
            cathode = 8'b11000000; //zero
        4'd1:
            cathode = 8'b11111001; //one
        4'd2:
            cathode = 8'b10100100; //two
        4'd3:
            cathode = 8'b10110000; //three
        4'd4:
            cathode = 8'b10011001; //four
        4'd5:
            cathode = 8'b10010010; //five
        4'd6:
            cathode = 8'b10000010; //six
        4'd7:
            cathode = 8'b11111000; //seven
        4'd8:
            cathode = 8'b10000100; //eight
        4'd9:
            cathode = 8'b10010000; //nine
        default:
            cathode = 8'b11000000; //other
        
    endcase
end    
endmodule