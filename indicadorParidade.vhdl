library ieee;
use ieee.std_logic_1164.all;

entity IndicadorParidade is
    port (
        entrada : in std_logic_vector(3 downto 0);
        paridade : out std_logic
    );
end entity IndicadorParidade;

architecture Behavioral of IndicadorParidade is
begin
    process (entrada)
    begin
        if (count(entrada) mod 2) = 0 then
            paridade <= '1'; -- Paridade par
        else
            paridade <= '0'; -- Paridade ímpar
        end if;
    end process;
end architecture Behavioral;
