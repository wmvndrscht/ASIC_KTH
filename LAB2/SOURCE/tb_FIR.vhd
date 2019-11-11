library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity tb_FIR is
end entity tb_FIR;

architecture tb_FIR_behavioural of tb_FIR is
  constant clk_period : time     := 10 ns;
  constant nr_of_taps : positive := 5;
  constant width      : positive := 5;

  component FIR_Toplevel
    port (rst_n      : in std_logic;
          clk        : in std_logic;
          sample_clk : in std_logic;
          sample     : in std_logic_vector(3 downto 0);
          dav  : out std_logic;
          outp : out std_logic_vector(3 downto 0)
          );
  end component;

  signal clk, sample_clk        : std_logic := '0';
  signal rst_n, dav_wire        : std_logic;
  signal sample_wire, outp_wire : std_logic_vector(3 downto 0);

begin

  rst_n <= '0',
           '1' after 2 ns;
  
  clk <= not clk after clk_period/2;

  smpl_clk : process
  begin  -- process smpl_clk

    sample_clk <= '0';

    for i in 1 to nr_of_taps loop
      wait until clk'event and clk = '0';
    end loop;  -- iwait until clk'event and clk = '1';

    sample_clk <= '1';

    wait until clk'event and clk = '0';
    
  end process smpl_clk;

  sample_wire <= (others => '0'),
                 conv_std_logic_vector (1, width-1) after (nr_of_taps*clk_period),
                 conv_std_logic_vector (0, width-1) after ((nr_of_taps+1)*clk_period),
                 conv_std_logic_vector (2, width-1) after ((2*nr_of_taps+1)*clk_period),
                 (others => '0') after ((2*nr_of_taps+2)*clk_period);

  u1 : FIR_Toplevel port map(rst_n,
                           clk,
                           sample_clk,
                           sample_wire,
                           dav_wire,
                           outp_wire);

end tb_FIR_behavioural;
