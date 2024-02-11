library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder_3x8_tb is
end Decoder_3x8_tb;

architecture Behavioral of Decoder_3x8_tb is
    -- Component Declaration for the decoder
    component Decoder_3x8
        Port ( 
               input : in  STD_LOGIC_VECTOR (2 downto 0);
               output : out  STD_LOGIC_VECTOR (7 downto 0)
              );
    end component;

    -- Signals declaration for the testbench
    signal input_signal : STD_LOGIC_VECTOR(2 downto 0);
    signal output_signal : STD_LOGIC_VECTOR(7 downto 0);
    
begin

    -- Instantiate the Decoder_3x8
    UUT: Decoder_3x8 port map (
        input => input_signal,
        output => output_signal
    );
    
    -- Stimulus process
    stimulus_proc: process
    begin
        -- Test each input combination
        input_signal <= "000"; wait for 10 ns;
        input_signal <= "001"; wait for 10 ns;
        input_signal <= "010"; wait for 10 ns;
        input_signal <= "011"; wait for 10 ns;
        input_signal <= "100"; wait for 10 ns;
        input_signal <= "101"; wait for 10 ns;
        input_signal <= "110"; wait for 10 ns;
        input_signal <= "111"; wait for 10 ns;
        
        wait;
    end process stimulus_proc;

end Behavioral;
