	component NIOS_II_Core is
		port (
			clk_clk     : in  std_logic                    := 'X'; -- clk
			leds_export : out std_logic_vector(1 downto 0)         -- export
		);
	end component NIOS_II_Core;

	u0 : component NIOS_II_Core
		port map (
			clk_clk     => CONNECTED_TO_clk_clk,     --  clk.clk
			leds_export => CONNECTED_TO_leds_export  -- leds.export
		);

