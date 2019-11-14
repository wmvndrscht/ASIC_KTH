library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.math_real.all;

entity tb_FIR is
end entity tb_FIR;

architecture tb_FIR_behavioural of tb_FIR is
  constant clk_period : time     := 10 ns;
  constant nr_of_taps : positive := 5;
--modify to 16 width
  constant width      : positive := 16;

  --Name of this will depend on synthesis -> FIR_Toplevel_x_x
  component FIR_Toplevel_16_5
    port (rst_n      : in std_logic;
          clk        : in std_logic;
          sample_clk : in std_logic;
          sample     : in std_logic_vector(width-1 downto 0);
          dav  : out std_logic;
          outp : out std_logic_vector(width-1 downto 0)
          );
  end component;

  signal clk, sample_clk        : std_logic := '0';
  signal rst_n, dav_wire        : std_logic;
  signal sample_wire, outp_wire : std_logic_vector(width-1 downto 0);

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
  
  random_generator:process
    VARIABLE seed1:positive:=1;
    VARIABLE seed2:positive:=15;
    VARIABLE a_real: real;
    VARIABLE count :INTEGER:=0;
    --Addition of this variable
    VARIABLE number_of_samples:INTEGER:=50000;

  begin

  for j in 1 to number_of_samples loop
    wait until sample_clk'event and sample_clk = '1';
    UNIFORM(seed1,seed2,a_real);
    a_real := a_real * 16.0;
    if(count < number_of_samples) then
      sample_wire <= conv_std_logic_vector(INTEGER(a_real), width) ;
      count := count+1;
    end if;
  end loop;
  end process random_generator;

  --Name of this will depend on synthesis -> FIR_Toplevel_x_x
  u1 : FIR_Toplevel_16_5 port map(rst_n,
                           clk,
                           sample_clk,
                           sample_wire,
                           dav_wire,
                           outp_wire);

end tb_FIR_behavioural;
