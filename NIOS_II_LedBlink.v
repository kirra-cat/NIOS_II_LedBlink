/**
 * NIOS_II_LedBlink.v
 * 
 */

module NIOS_II_LedBlink
(
  input                      g_clk50,
  input                      g_reset,

  output               [7:0] g_leds
);

NIOS_II_Core core0
(
  .clk_clk       ( g_clk50 ),
  .leds_export   ( g_leds[1:0] )
);

endmodule
