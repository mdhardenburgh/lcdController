library verilog;
use verilog.vl_types.all;
entity lcdRegisterFile is
    port(
        clk             : in     vl_logic;
        writeAddr       : in     vl_logic_vector(4 downto 0);
        dataIn          : in     vl_logic_vector(7 downto 0);
        addrToRead      : in     vl_logic_vector(4 downto 0);
        dataOut         : out    vl_logic_vector(7 downto 0)
    );
end lcdRegisterFile;
