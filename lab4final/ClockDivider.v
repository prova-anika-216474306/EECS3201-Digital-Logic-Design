module ClockDivider(cin,cout);

// written by Jaspal Singh

input cin;
output reg cout;
   
reg[31:0] count     = 32'd0;
parameter D         = 25000000;         // toggle every 0.5 sec  

always @(posedge cin) begin
        
    if (count >= D-1) begin             //reset to 0
        count <= 32'd0;
        cout  <= ~cout;                 // toggle           
    end else begin
        count <= count + 32'd1;
    end
end

endmodule
