library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
    
end entity testbench;

architecture RTL of testbench is
    signal par_inputT:   std_logic_vector(7 downto 0);
    signal par_enableT : std_logic;
    signal par_outT:     std_logic;

begin
    dut_par: entity work.paridade
        port map(
        --esqerda _vhd >> direita testbench
            par_input => par_inputT,
            par_enable => par_enableT,
            par_out => par_outT
        );
        
    process
    begin
        --teste pra ver se a saída muda
        par_enableT <= '0';
        wait for 20 ns;
        par_inputT <= "11101111";
        wait for 20 ns;

        par_enableT <= '1';
        wait for 20 ns;
        --10110101 par = 1
        par_inputT <= "11101110";
        wait for 20 ns;
        --10110110 impar = 0
        par_inputT <= "11101111";
        wait;
        
        
    end process;
        
end architecture RTL;