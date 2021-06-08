<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4(4:0)" />
        <signal name="XLXN_5(4:0)" />
        <signal name="XLXN_6(4:0)" />
        <signal name="XLXN_7" />
        <signal name="CLK" />
        <signal name="MEM_INST(31:0)" />
        <signal name="XLXN_13(31:0)" />
        <signal name="MEM_INST_ENB" />
        <signal name="XLXN_20(31:0)" />
        <signal name="XLXN_50(2:0)" />
        <signal name="XLXN_51(2:0)" />
        <signal name="XLXN_53(31:0)" />
        <signal name="XLXN_60(3:0)" />
        <signal name="XLXN_61(31:0)" />
        <signal name="XLXN_62(31:0)" />
        <signal name="XLXN_64(2:0)" />
        <signal name="XLXN_66(2:0)" />
        <signal name="XLXN_67(31:0)" />
        <signal name="XLXN_68(31:0)" />
        <signal name="XLXN_69" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74(2:0)" />
        <signal name="XLXN_75" />
        <signal name="XLXN_78" />
        <signal name="ADDR(31:0)" />
        <signal name="XLXN_80(31:0)" />
        <signal name="XLXN_87(31:0)" />
        <signal name="XLXN_90(2:0)" />
        <signal name="XLXN_91(31:0)" />
        <signal name="MEM_ADDR(15:0)" />
        <signal name="MEM_LOAD(31:0)" />
        <signal name="MEM_STORE(31:0)" />
        <signal name="XLXN_95(31:0)" />
        <signal name="XLXN_96(2:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="MEM_INST(31:0)" />
        <port polarity="Input" name="MEM_INST_ENB" />
        <port polarity="Output" name="ADDR(31:0)" />
        <port polarity="Output" name="MEM_ADDR(15:0)" />
        <port polarity="Input" name="MEM_LOAD(31:0)" />
        <port polarity="Output" name="MEM_STORE(31:0)" />
        <blockdef name="Reg2R1W">
            <timestamp>2021-5-15T12:53:43</timestamp>
            <rect width="352" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-428" height="24" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="alu">
            <timestamp>2021-5-15T10:11:35</timestamp>
            <rect width="320" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="mux8">
            <timestamp>2021-5-15T12:54:6</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
        </blockdef>
        <blockdef name="imm32">
            <timestamp>2021-5-16T14:59:44</timestamp>
            <rect width="336" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
        </blockdef>
        <blockdef name="PC">
            <timestamp>2021-5-15T12:54:21</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="cu">
            <timestamp>2021-5-16T15:40:57</timestamp>
            <rect width="64" x="416" y="148" height="24" />
            <line x2="480" y1="160" y2="160" x1="416" />
            <rect width="64" x="416" y="212" height="24" />
            <line x2="480" y1="224" y2="224" x1="416" />
            <rect width="64" x="416" y="276" height="24" />
            <line x2="480" y1="288" y2="288" x1="416" />
            <rect width="64" x="416" y="340" height="24" />
            <line x2="480" y1="352" y2="352" x1="416" />
            <rect width="64" x="416" y="404" height="24" />
            <line x2="480" y1="416" y2="416" x1="416" />
            <rect width="64" x="416" y="468" height="24" />
            <line x2="480" y1="480" y2="480" x1="416" />
            <line x2="480" y1="32" y2="32" x1="416" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-608" y2="-608" x1="416" />
            <line x2="480" y1="-544" y2="-544" x1="416" />
            <rect width="64" x="416" y="-364" height="24" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <rect width="64" x="416" y="-300" height="24" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <rect width="64" x="416" y="-236" height="24" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
            <rect width="352" x="64" y="-640" height="1152" />
        </blockdef>
        <blockdef name="br">
            <timestamp>2021-5-16T15:41:52</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="lsu">
            <timestamp>2021-5-15T12:54:1</timestamp>
            <rect width="416" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="480" y="-236" height="24" />
            <line x2="544" y1="-224" y2="-224" x1="480" />
            <rect width="64" x="480" y="-140" height="24" />
            <line x2="544" y1="-128" y2="-128" x1="480" />
            <rect width="64" x="480" y="-44" height="24" />
            <line x2="544" y1="-32" y2="-32" x1="480" />
        </blockdef>
        <blockdef name="pc4">
            <timestamp>2021-5-18T17:42:12</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="pcsum">
            <timestamp>2021-5-18T17:43:29</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="Reg2R1W" name="XLXI_9">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_7" name="writeEnable" />
            <blockpin name="rst" />
            <blockpin signalname="XLXN_20(31:0)" name="wrData(31:0)" />
            <blockpin signalname="XLXN_6(4:0)" name="wrReg(4:0)" />
            <blockpin signalname="XLXN_4(4:0)" name="readSelect1(4:0)" />
            <blockpin signalname="XLXN_5(4:0)" name="readSelect2(4:0)" />
            <blockpin signalname="XLXN_62(31:0)" name="readData1(31:0)" />
            <blockpin signalname="XLXN_61(31:0)" name="readData2(31:0)" />
        </block>
        <block symbolname="alu" name="XLXI_11">
            <blockpin signalname="XLXN_68(31:0)" name="OP1(31:0)" />
            <blockpin signalname="XLXN_67(31:0)" name="OP2(31:0)" />
            <blockpin signalname="XLXN_60(3:0)" name="OPCODE(3:0)" />
            <blockpin signalname="XLXN_78" name="LT" />
            <blockpin signalname="XLXN_78" name="LTU" />
            <blockpin signalname="XLXN_75" name="EQ" />
            <blockpin signalname="XLXN_13(31:0)" name="RESULT(31:0)" />
        </block>
        <block symbolname="cu" name="XLXI_19">
            <blockpin signalname="MEM_INST_ENB" name="INST_ENB" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="MEM_INST(31:0)" name="MEM_INST(31:0)" />
            <blockpin name="RDY_CLK" />
            <blockpin signalname="XLXN_69" name="PC_CLK" />
            <blockpin signalname="XLXN_7" name="WRITE_ENB" />
            <blockpin signalname="XLXN_4(4:0)" name="RS1_ADR(4:0)" />
            <blockpin signalname="XLXN_5(4:0)" name="RS2_ADR(4:0)" />
            <blockpin signalname="XLXN_6(4:0)" name="REG_ADR(4:0)" />
            <blockpin signalname="XLXN_60(3:0)" name="ALU_OPT(3:0)" />
            <blockpin signalname="XLXN_74(2:0)" name="BR_OPT(2:0)" />
            <blockpin signalname="XLXN_90(2:0)" name="LSU_OPT(2:0)" />
            <blockpin signalname="XLXN_50(2:0)" name="IMM_TYPE(2:0)" />
            <blockpin signalname="XLXN_64(2:0)" name="RS1_MUX_SELECT(2:0)" />
            <blockpin signalname="XLXN_66(2:0)" name="RS2_MUX_SELECT(2:0)" />
            <blockpin signalname="XLXN_51(2:0)" name="REG_MUX_SELECT(2:0)" />
            <blockpin signalname="XLXN_96(2:0)" name="LSU_MUX_SELECT(2:0)" />
            <blockpin name="PC_MUX_SELECT(2:0)" />
        </block>
        <block symbolname="imm32" name="XLXI_13">
            <blockpin signalname="MEM_INST(31:0)" name="IN(31:7)" />
            <blockpin signalname="XLXN_50(2:0)" name="imm_type(2:0)" />
            <blockpin signalname="XLXN_53(31:0)" name="immediate(31:0)" />
        </block>
        <block symbolname="mux8" name="XLXI_12">
            <blockpin signalname="XLXN_51(2:0)" name="select(2:0)" />
            <blockpin signalname="XLXN_13(31:0)" name="in0(31:0)" />
            <blockpin signalname="XLXN_95(31:0)" name="in1(31:0)" />
            <blockpin signalname="XLXN_53(31:0)" name="in2(31:0)" />
            <blockpin signalname="ADDR(31:0)" name="in3(31:0)" />
            <blockpin signalname="XLXN_80(31:0)" name="in4(31:0)" />
            <blockpin name="in5(31:0)" />
            <blockpin name="in6(31:0)" />
            <blockpin name="in7(31:0)" />
            <blockpin signalname="XLXN_20(31:0)" name="muxout(31:0)" />
        </block>
        <block symbolname="mux8" name="XLXI_31">
            <blockpin signalname="XLXN_66(2:0)" name="select(2:0)" />
            <blockpin signalname="XLXN_61(31:0)" name="in0(31:0)" />
            <blockpin signalname="XLXN_53(31:0)" name="in1(31:0)" />
            <blockpin name="in2(31:0)" />
            <blockpin name="in3(31:0)" />
            <blockpin name="in4(31:0)" />
            <blockpin name="in5(31:0)" />
            <blockpin name="in6(31:0)" />
            <blockpin name="in7(31:0)" />
            <blockpin signalname="XLXN_67(31:0)" name="muxout(31:0)" />
        </block>
        <block symbolname="mux8" name="XLXI_30">
            <blockpin signalname="XLXN_64(2:0)" name="select(2:0)" />
            <blockpin signalname="XLXN_62(31:0)" name="in0(31:0)" />
            <blockpin name="in1(31:0)" />
            <blockpin name="in2(31:0)" />
            <blockpin name="in3(31:0)" />
            <blockpin name="in4(31:0)" />
            <blockpin name="in5(31:0)" />
            <blockpin name="in6(31:0)" />
            <blockpin name="in7(31:0)" />
            <blockpin signalname="XLXN_68(31:0)" name="muxout(31:0)" />
        </block>
        <block symbolname="PC" name="XLXI_32">
            <blockpin signalname="XLXN_69" name="clk" />
            <blockpin name="reset" />
            <blockpin signalname="XLXN_73" name="is_branch" />
            <blockpin signalname="XLXN_87(31:0)" name="newPC(31:0)" />
            <blockpin signalname="ADDR(31:0)" name="PC(31:0)" />
        </block>
        <block symbolname="br" name="XLXI_33">
            <blockpin signalname="XLXN_75" name="aluEQ" />
            <blockpin signalname="XLXN_78" name="aluLT" />
            <blockpin signalname="XLXN_74(2:0)" name="BRUOP(2:0)" />
            <blockpin signalname="XLXN_73" name="doBranch" />
        </block>
        <block symbolname="lsu" name="XLXI_34">
            <blockpin signalname="XLXN_90(2:0)" name="LSUOP(2:0)" />
            <blockpin signalname="MEM_LOAD(31:0)" name="inData_load(31:0)" />
            <blockpin signalname="XLXN_61(31:0)" name="inData_store(31:0)" />
            <blockpin signalname="XLXN_91(31:0)" name="inAddr(31:0)" />
            <blockpin signalname="XLXN_95(31:0)" name="outData_load(31:0)" />
            <blockpin signalname="MEM_STORE(31:0)" name="outData_store(31:0)" />
            <blockpin signalname="MEM_ADDR(15:0)" name="outAddr(15:0)" />
        </block>
        <block symbolname="mux8" name="XLXI_35">
            <blockpin signalname="XLXN_96(2:0)" name="select(2:0)" />
            <blockpin signalname="XLXN_13(31:0)" name="in0(31:0)" />
            <blockpin name="in1(31:0)" />
            <blockpin name="in2(31:0)" />
            <blockpin name="in3(31:0)" />
            <blockpin name="in4(31:0)" />
            <blockpin name="in5(31:0)" />
            <blockpin name="in6(31:0)" />
            <blockpin name="in7(31:0)" />
            <blockpin signalname="XLXN_91(31:0)" name="muxout(31:0)" />
        </block>
        <block symbolname="pc4" name="XLXI_36">
            <blockpin signalname="ADDR(31:0)" name="pc(31:0)" />
            <blockpin signalname="XLXN_80(31:0)" name="pc4(31:0)" />
        </block>
        <block symbolname="pcsum" name="XLXI_37">
            <blockpin signalname="ADDR(31:0)" name="op_a(31:0)" />
            <blockpin signalname="XLXN_53(31:0)" name="op_b(31:0)" />
            <blockpin signalname="XLXN_87(31:0)" name="newpc(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="XLXN_7">
            <wire x2="3536" y1="3968" y2="3968" x1="3456" />
            <wire x2="3536" y1="2768" y2="3968" x1="3536" />
            <wire x2="3696" y1="2768" y2="2768" x1="3536" />
        </branch>
        <branch name="XLXN_13(31:0)">
            <wire x2="3024" y1="2272" y2="2448" x1="3024" />
            <wire x2="3072" y1="2448" y2="2448" x1="3024" />
            <wire x2="5760" y1="2272" y2="2272" x1="3024" />
            <wire x2="5760" y1="2272" y2="2816" x1="5760" />
            <wire x2="6000" y1="2816" y2="2816" x1="5760" />
            <wire x2="5760" y1="2816" y2="2816" x1="5696" />
            <wire x2="6000" y1="2384" y2="2816" x1="6000" />
            <wire x2="6208" y1="2384" y2="2384" x1="6000" />
        </branch>
        <branch name="XLXN_6(4:0)">
            <wire x2="3552" y1="3712" y2="3712" x1="3456" />
            <wire x2="3552" y1="2576" y2="3712" x1="3552" />
            <wire x2="3696" y1="2576" y2="2576" x1="3552" />
        </branch>
        <branch name="XLXN_5(4:0)">
            <wire x2="3584" y1="3648" y2="3648" x1="3456" />
            <wire x2="3584" y1="2448" y2="3648" x1="3584" />
            <wire x2="3696" y1="2448" y2="2448" x1="3584" />
        </branch>
        <branch name="XLXN_4(4:0)">
            <wire x2="3568" y1="3584" y2="3584" x1="3456" />
            <wire x2="3568" y1="2512" y2="3584" x1="3568" />
            <wire x2="3696" y1="2512" y2="2512" x1="3568" />
        </branch>
        <branch name="MEM_INST_ENB">
            <wire x2="2976" y1="3328" y2="3328" x1="2944" />
        </branch>
        <branch name="XLXN_20(31:0)">
            <wire x2="3472" y1="2384" y2="2384" x1="3456" />
            <wire x2="3472" y1="2384" y2="2640" x1="3472" />
            <wire x2="3696" y1="2640" y2="2640" x1="3472" />
        </branch>
        <instance x="3072" y="2928" name="XLXI_12" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2944" y="3328" name="MEM_INST_ENB" orien="R180" />
        <branch name="XLXN_50(2:0)">
            <wire x2="2192" y1="3376" y2="3376" x1="2176" />
            <wire x2="2176" y1="3376" y2="4528" x1="2176" />
            <wire x2="3472" y1="4528" y2="4528" x1="2176" />
            <wire x2="3472" y1="4096" y2="4096" x1="3456" />
            <wire x2="3472" y1="4096" y2="4528" x1="3472" />
        </branch>
        <branch name="XLXN_51(2:0)">
            <wire x2="3072" y1="2384" y2="2384" x1="3056" />
            <wire x2="3056" y1="2384" y2="2944" x1="3056" />
            <wire x2="3488" y1="2944" y2="2944" x1="3056" />
            <wire x2="3488" y1="2944" y2="4288" x1="3488" />
            <wire x2="3488" y1="4288" y2="4288" x1="3456" />
        </branch>
        <branch name="XLXN_53(31:0)">
            <wire x2="1632" y1="2848" y2="2848" x1="1552" />
            <wire x2="1552" y1="2848" y2="3056" x1="1552" />
            <wire x2="2656" y1="3056" y2="3056" x1="1552" />
            <wire x2="2656" y1="3056" y2="3216" x1="2656" />
            <wire x2="2672" y1="3216" y2="3216" x1="2656" />
            <wire x2="2672" y1="3216" y2="3312" x1="2672" />
            <wire x2="2896" y1="2816" y2="2816" x1="2656" />
            <wire x2="2960" y1="2816" y2="2816" x1="2896" />
            <wire x2="2656" y1="2816" y2="3056" x1="2656" />
            <wire x2="2672" y1="3312" y2="3312" x1="2656" />
            <wire x2="2896" y1="2288" y2="2816" x1="2896" />
            <wire x2="4240" y1="2288" y2="2288" x1="2896" />
            <wire x2="4240" y1="2288" y2="2512" x1="4240" />
            <wire x2="4304" y1="2512" y2="2512" x1="4240" />
            <wire x2="2960" y1="2576" y2="2816" x1="2960" />
            <wire x2="3072" y1="2576" y2="2576" x1="2960" />
        </branch>
        <instance x="3696" y="2416" name="XLXI_9" orien="M180">
        </instance>
        <instance x="5248" y="2848" name="XLXI_11" orien="R0">
        </instance>
        <branch name="XLXN_60(3:0)">
            <wire x2="4880" y1="3776" y2="3776" x1="3456" />
            <wire x2="4880" y1="2816" y2="3776" x1="4880" />
            <wire x2="5248" y1="2816" y2="2816" x1="4880" />
        </branch>
        <instance x="4304" y="2928" name="XLXI_31" orien="R0">
        </instance>
        <branch name="XLXN_61(31:0)">
            <wire x2="4208" y1="2448" y2="2448" x1="4176" />
            <wire x2="4304" y1="2448" y2="2448" x1="4208" />
            <wire x2="4208" y1="2304" y2="2448" x1="4208" />
            <wire x2="4768" y1="2304" y2="2304" x1="4208" />
            <wire x2="4768" y1="2304" y2="3376" x1="4768" />
            <wire x2="6240" y1="3376" y2="3376" x1="4768" />
        </branch>
        <branch name="XLXN_62(31:0)">
            <wire x2="4016" y1="2896" y2="3072" x1="4016" />
            <wire x2="4096" y1="3072" y2="3072" x1="4016" />
            <wire x2="4240" y1="2896" y2="2896" x1="4016" />
            <wire x2="4240" y1="2832" y2="2832" x1="4176" />
            <wire x2="4240" y1="2832" y2="2896" x1="4240" />
        </branch>
        <branch name="XLXN_64(2:0)">
            <wire x2="3776" y1="4160" y2="4160" x1="3456" />
            <wire x2="3776" y1="3008" y2="4160" x1="3776" />
            <wire x2="4096" y1="3008" y2="3008" x1="3776" />
        </branch>
        <instance x="4096" y="3552" name="XLXI_30" orien="R0">
        </instance>
        <branch name="XLXN_66(2:0)">
            <wire x2="3664" y1="4224" y2="4224" x1="3456" />
            <wire x2="3664" y1="2384" y2="4224" x1="3664" />
            <wire x2="4304" y1="2384" y2="2384" x1="3664" />
        </branch>
        <branch name="XLXN_67(31:0)">
            <wire x2="4960" y1="2384" y2="2384" x1="4688" />
            <wire x2="4960" y1="2384" y2="2720" x1="4960" />
            <wire x2="5248" y1="2720" y2="2720" x1="4960" />
        </branch>
        <branch name="XLXN_68(31:0)">
            <wire x2="4864" y1="3008" y2="3008" x1="4480" />
            <wire x2="4864" y1="2624" y2="3008" x1="4864" />
            <wire x2="5248" y1="2624" y2="2624" x1="4864" />
        </branch>
        <instance x="1936" y="2576" name="XLXI_32" orien="R0">
        </instance>
        <branch name="XLXN_69">
            <wire x2="1872" y1="2256" y2="2352" x1="1872" />
            <wire x2="1936" y1="2352" y2="2352" x1="1872" />
            <wire x2="3648" y1="2256" y2="2256" x1="1872" />
            <wire x2="3648" y1="2256" y2="3392" x1="3648" />
            <wire x2="3648" y1="3392" y2="3392" x1="3456" />
        </branch>
        <instance x="3472" y="1968" name="XLXI_33" orien="M0">
        </instance>
        <branch name="XLXN_73">
            <wire x2="1920" y1="1808" y2="2480" x1="1920" />
            <wire x2="1936" y1="2480" y2="2480" x1="1920" />
            <wire x2="3088" y1="1808" y2="1808" x1="1920" />
        </branch>
        <branch name="XLXN_74(2:0)">
            <wire x2="3632" y1="3840" y2="3840" x1="3456" />
            <wire x2="3632" y1="1936" y2="1936" x1="3472" />
            <wire x2="3632" y1="1936" y2="3840" x1="3632" />
        </branch>
        <branch name="XLXN_75">
            <wire x2="5744" y1="1808" y2="1808" x1="3472" />
            <wire x2="5744" y1="1808" y2="2752" x1="5744" />
            <wire x2="5744" y1="2752" y2="2752" x1="5696" />
        </branch>
        <instance x="6240" y="3472" name="XLXI_34" orien="R0">
        </instance>
        <instance x="6208" y="2864" name="XLXI_35" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2448" y="2432" name="ADDR(31:0)" orien="R90" />
        <iomarker fontsize="28" x="2704" y="3920" name="MEM_INST(31:0)" orien="R180" />
        <branch name="XLXN_78">
            <wire x2="5776" y1="1872" y2="1872" x1="3472" />
            <wire x2="5776" y1="1872" y2="2176" x1="5776" />
            <wire x2="5776" y1="2176" y2="2624" x1="5776" />
            <wire x2="5984" y1="2176" y2="2176" x1="5776" />
            <wire x2="5984" y1="2176" y2="2688" x1="5984" />
            <wire x2="5776" y1="2624" y2="2624" x1="5696" />
            <wire x2="5984" y1="2688" y2="2688" x1="5696" />
        </branch>
        <instance x="2368" y="2144" name="XLXI_36" orien="R0">
        </instance>
        <instance x="1632" y="2880" name="XLXI_37" orien="R0">
        </instance>
        <branch name="ADDR(31:0)">
            <wire x2="1552" y1="2160" y2="2784" x1="1552" />
            <wire x2="1632" y1="2784" y2="2784" x1="1552" />
            <wire x2="2304" y1="2160" y2="2160" x1="1552" />
            <wire x2="2304" y1="2160" y2="2208" x1="2304" />
            <wire x2="2368" y1="2208" y2="2208" x1="2304" />
            <wire x2="2368" y1="2208" y2="2352" x1="2368" />
            <wire x2="2448" y1="2352" y2="2352" x1="2368" />
            <wire x2="2688" y1="2352" y2="2352" x1="2448" />
            <wire x2="2688" y1="2352" y2="2640" x1="2688" />
            <wire x2="3072" y1="2640" y2="2640" x1="2688" />
            <wire x2="2448" y1="2352" y2="2432" x1="2448" />
            <wire x2="2368" y1="2112" y2="2112" x1="2304" />
            <wire x2="2304" y1="2112" y2="2160" x1="2304" />
            <wire x2="2368" y1="2352" y2="2352" x1="2320" />
        </branch>
        <branch name="XLXN_80(31:0)">
            <wire x2="2912" y1="2112" y2="2112" x1="2752" />
            <wire x2="2912" y1="2112" y2="2704" x1="2912" />
            <wire x2="3072" y1="2704" y2="2704" x1="2912" />
        </branch>
        <instance x="2192" y="3408" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_87(31:0)">
            <wire x2="1936" y1="2544" y2="2544" x1="1856" />
            <wire x2="1856" y1="2544" y2="2656" x1="1856" />
            <wire x2="2080" y1="2656" y2="2656" x1="1856" />
            <wire x2="2080" y1="2656" y2="2784" x1="2080" />
            <wire x2="2080" y1="2784" y2="2784" x1="2016" />
        </branch>
        <branch name="XLXN_90(2:0)">
            <wire x2="4896" y1="3904" y2="3904" x1="3456" />
            <wire x2="4896" y1="3248" y2="3904" x1="4896" />
            <wire x2="6240" y1="3248" y2="3248" x1="4896" />
        </branch>
        <branch name="XLXN_91(31:0)">
            <wire x2="6240" y1="3440" y2="3440" x1="6176" />
            <wire x2="6176" y1="3440" y2="3552" x1="6176" />
            <wire x2="6864" y1="3552" y2="3552" x1="6176" />
            <wire x2="6864" y1="2320" y2="2320" x1="6592" />
            <wire x2="6864" y1="2320" y2="3552" x1="6864" />
        </branch>
        <branch name="MEM_ADDR(15:0)">
            <wire x2="6816" y1="3440" y2="3440" x1="6784" />
        </branch>
        <iomarker fontsize="28" x="6816" y="3440" name="MEM_ADDR(15:0)" orien="R0" />
        <branch name="MEM_LOAD(31:0)">
            <wire x2="6240" y1="3312" y2="3312" x1="6208" />
        </branch>
        <iomarker fontsize="28" x="6208" y="3312" name="MEM_LOAD(31:0)" orien="R180" />
        <branch name="MEM_STORE(31:0)">
            <wire x2="6816" y1="3344" y2="3344" x1="6784" />
        </branch>
        <iomarker fontsize="28" x="6816" y="3344" name="MEM_STORE(31:0)" orien="R0" />
        <branch name="XLXN_95(31:0)">
            <wire x2="2992" y1="2192" y2="2512" x1="2992" />
            <wire x2="3072" y1="2512" y2="2512" x1="2992" />
            <wire x2="6848" y1="2192" y2="2192" x1="2992" />
            <wire x2="6848" y1="2192" y2="3248" x1="6848" />
            <wire x2="6848" y1="3248" y2="3248" x1="6784" />
        </branch>
        <branch name="MEM_INST(31:0)">
            <wire x2="2192" y1="3312" y2="3312" x1="2112" />
            <wire x2="2112" y1="3312" y2="3472" x1="2112" />
            <wire x2="2752" y1="3472" y2="3472" x1="2112" />
            <wire x2="2752" y1="3472" y2="3920" x1="2752" />
            <wire x2="2960" y1="3920" y2="3920" x1="2752" />
            <wire x2="2752" y1="3920" y2="3920" x1="2704" />
            <wire x2="2960" y1="3904" y2="3920" x1="2960" />
            <wire x2="2976" y1="3904" y2="3904" x1="2960" />
        </branch>
        <branch name="CLK">
            <wire x2="2960" y1="3552" y2="3552" x1="2880" />
            <wire x2="2960" y1="3552" y2="3616" x1="2960" />
            <wire x2="2976" y1="3616" y2="3616" x1="2960" />
            <wire x2="2880" y1="3552" y2="4512" x1="2880" />
            <wire x2="3520" y1="4512" y2="4512" x1="2880" />
            <wire x2="2960" y1="3504" y2="3504" x1="2944" />
            <wire x2="2960" y1="3504" y2="3552" x1="2960" />
            <wire x2="3520" y1="2832" y2="4512" x1="3520" />
            <wire x2="3696" y1="2832" y2="2832" x1="3520" />
        </branch>
        <instance x="2976" y="3936" name="XLXI_19" orien="R0">
        </instance>
        <branch name="XLXN_96(2:0)">
            <wire x2="4832" y1="4352" y2="4352" x1="3456" />
            <wire x2="4832" y1="2320" y2="4352" x1="4832" />
            <wire x2="6208" y1="2320" y2="2320" x1="4832" />
        </branch>
        <iomarker fontsize="28" x="2944" y="3504" name="CLK" orien="R180" />
    </sheet>
</drawing>