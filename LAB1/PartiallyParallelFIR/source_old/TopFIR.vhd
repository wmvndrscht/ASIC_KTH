Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
library work; 
use work.types_consts.all;


ENTITY Top_Serial_FIR is 
PORT (clk,rst_n,sample_clk:in std_logic;
      sample: in signed (width-1 downto 0);
      conv_sum : out signed (result_width-1 downto 0);
      dav:out std_logic);
END Top_Serial_FIR;


ARCHITECTURE structural OF Top_Serial_FIR IS 

component delay_line 
  port(clk:in std_logic;
       sample_clk:in std_logic;
       rst_n:in std_logic;
       w_addr: in std_logic_vector (addr_width-1 downto 0);--write address
       w_en: std_logic;
       sample_in: in signed (width-1 downto 0);
       r_addr1: in std_logic_vector (addr_width-1 downto 0);--read address
       r_addr2: in std_logic_vector (addr_width-1 downto 0);--read address,  to be added for partially parallel FIR filter
       sample_out1: out signed (width-1 downto 0));
       sample_out2: out signed (width-1 downto 0); --to be added for partially parallel FIR filter
end component;

component Coef_ROM 
PORT ( coeff_addr : in std_logic_vector (addr_width-1 downto 0);
       coeff: out signed (width-1 downto 0));
END component;

component FSM 
port(
	rst_n		  	 :in  std_logic;
	clk			 :in  std_logic;
	sample_clk	  	 :in  std_logic;
	delayLineWrEn		 :out std_logic;
	delayLineAdr	 :out std_logic_vector(addr_width-1 downto 0);
	delayLineR1   	 :out std_logic_vector(addr_width-1 downto 0);
	delayLineR2   	 :out std_logic_vector(addr_width-1 downto 0); to be added for partially parallel FIR filter
	dav			  	 :out std_logic;
	rst_mac_n		 :out std_logic;
	coeffAdr		 :out std_logic_vector(addr_width-1 downto 0));
end component;

component Arith_Unit 
PORT (clk : std_logic;
      rst_n : std_logic;
      rst_mac_n: std_logic;
      sample1: in signed(width-1 downto 0);   
      coeff: in signed(width-1 downto 0);
      result: out signed (result_width-1 downto 0));
END component;

signal w_addr, r_addr1, coeff_addr: std_logic_vector (addr_width-1 downto 0);
signal sample_in, sample_out1, coeff: signed (width-1 downto 0);
signal result:signed (result_width-1 downto 0);
signal w_en, rst_mac_n:  std_logic;
signal dav_tmp : std_logic;

begin
  D1: delay_line port map (clk,sample_clk, rst_n, w_addr, w_en, sample, r_addr1, sample_out1);
  C1: Coef_ROM port map (coeff_addr, coeff);
  A1: Arith_Unit port map (clk, rst_n,rst_mac_n,sample_out1,coeff, result);
  F1: FSM port map (rst_n,clk, sample_clk,w_en,w_addr,r_addr1,r_addr2,dav_tmp,rst_mac_n , coeff_addr);
  dav <= dav_tmp;
  conv_sum <= result when dav_tmp='1' else (others => '0');
  
END structural;
