module sync_reset 
(
  input  clock,
  input  reset_n,
  output a_reset_n
);

reg reg_reset_1, reg_reset_2;

assign a_reset_n = reg_reset_2;

always @ (posedge clock, negedge reset_n)
begin
  if (!reset_n)
  begin
    reg_reset_1 <= 1'b0;
    reg_reset_2 <= 1'b0;
  end
  else
  begin
    reg_reset_1 <= 1'b1;
    reg_reset_2 <= reg_reset_1;
  end
end

endmodule
