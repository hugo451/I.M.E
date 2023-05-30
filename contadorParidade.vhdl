library ieee;
use ieee.std_logic_1164.all;

entity ContadorParidade is
    port (
        clk : in std_logic;
        reset : in std_logic;
        entrada : in std_logic_vector(3 downto 0);
        contador : out std_logic_vector(3 downto 0)
    );
end entity ContadorParidade;

architecture Behavioral of ContadorParidade is
    signal temp : std_logic_vector(3 downto 0);
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                temp <= (others => '0');
            else
                if entrada(0) = '1' then
                    temp <= temp + 1;
                end if;
                entrada <= entrada(2 downto 0) & entrada(3);
            end if;
        end if;
    end process;

    contador <= temp;
end architecture Behavioral;
