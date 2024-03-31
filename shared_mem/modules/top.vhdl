library  IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity top is
end top;

architecture arch of top is 

-- BRAM Port A - accessed from PS side
signal bram_porta_0_addr: std_logic_vector(12 downto 0);
signal clk: std_logic;
signal bram_porta_0_din:  std_logic_vector(31 downto 0);
signal bram_porta_0_dout:  std_logic_vector(31 downto 0);
signal bram_porta_0_en: std_logic;
signal rst: std_logic;
signal bram_porta_0_we: std_logic_vector (3 downto 0);


-- BRAM Port B - accessed from PL
signal  bram_portb_0_addr:  std_logic_vector (10 downto 0) := (others => '0');
signal  bram_portb_0_din:  std_logic_vector (31 downto 0) := (others => '0');
signal  bram_portb_0_we: std_logic  := '0';
begin

-- Zynq system block
zynq_ps_interface_inst: entity work.design_1_wrapper
port map (
    BRAM_PORTA_0_addr => bram_porta_0_addr,
    BRAM_PORTA_0_clk => clk,
    BRAM_PORTA_0_din => bram_porta_din,
    BRAM_PORTA_0_dout => bram_porta_0_dout,
    BRAM_PORTA_0_en => bram_porta_0_en,
    BRAM_PORTA_0_rst => rst, 
    BRAM_PORTA_0_we => bram_porta_0_we
);


--BRAM Memory
port map(
    clka => clk,
    ena => bram_porta_0_en,
    wea => bram_porta_0_we( 0 downto 0),
    addra => bram_porta_addr(12 downto 0),
    dina  => bram_porta_din,
    douta => bram_porta_0_dout,
    
    clkb => clk,
    enb => '1',
    web(0) => bram_portb_0_we,
    addrb => bram_portb_0_addr,
    dinb => bram_portb_0_din,
    doutb => open
);


process(clk)
begin
if rising_edge (clk) then
    if rst = '1 then
        bram_portb_0_addr <= (othres => '0');
        bram_portb_0_din <= (othres => '0');
        bram_portb_0_we <= '0';
     else
        if(bram_portb_0_addr /= X"7FF") then
            bram_portb_0_addr  <= bram_portb_0_addr +1;
            bram_portb_0_din <= bram_portb_0_din + 1;
            bram_portb_0_we <= '1';
        else
            bram_portb_0_awe <= '0';
        end if;
     end if;
end if;      
end process
end arch;