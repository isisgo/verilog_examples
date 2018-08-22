module flip_flop_D(clk, D, reset, Q);
    input clk, D, reset;
    output reg Q;
    
    always @(posedge clk)
    begin
        if(reset==1'b1)
              Q <= 1'b0; 
        else 
              Q <= D; 
    end
endmodule