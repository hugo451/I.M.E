library ieee;
use ieee.std_logic_1164.all;

entity TesteParidade is
end entity TesteParidade;

architecture Behavioral of TesteParidade is
    signal entrada : std_logic_vector(3 downto 0);
    signal paridade : std_logic;
begin
    UUT: entity work.ContadorParidade
        port map (
            clk => clock,
            reset => reset,
            entrada => entrada,
            contador => contador
        );
    
    UUT2: entity work.IndicadorParidade
        port map (
            entrada => contador,
            paridade => paridade
        );
        
    -- Sinais de teste
    signal clock : std_logic := '0';
    signal reset : std_logic := '0';
    
    process
    begin
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        wait for 10 ns;
        entrada <= "1010";
        wait for 10 ns;
        -- Outros testes...
        wait;
    end process;
    
    process
    begin
        while true loop
            clock <= '0';
            wait for 5 ns;
            clock <= '1';
            wait for 5 ns;
        end loop;
    end process;
end architecture Behavioral;
