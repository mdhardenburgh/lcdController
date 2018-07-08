library verilog;
use verilog.vl_types.all;
entity lcdStateMachine is
    port(
        clk             : in     vl_logic;
        lcdOnIn         : in     vl_logic;
        dataIn          : in     vl_logic_vector(7 downto 0);
        lcdBus          : out    vl_logic_vector(7 downto 0);
        addrToRead      : out    vl_logic_vector(4 downto 0);
        lcdOnOut        : out    vl_logic;
        lcdReadWriteSel : out    vl_logic;
        lcdRsSelect     : out    vl_logic;
        lcdEnableOut    : out    vl_logic;
        errorLed        : out    vl_logic
    );
end lcdStateMachine;
