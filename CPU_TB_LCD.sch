<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2(4:0)" />
        <signal name="CLK" />
        <signal name="XLXN_13(0:255)" />
        <signal name="XLXN_28(7:0)" />
        <signal name="LCD_E" />
        <signal name="LCD_RW" />
        <signal name="LCD_RS" />
        <signal name="SF_D(11:8)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="SF_D(11:8)" />
        <blockdef name="lcd">
            <timestamp>2021-6-9T9:32:57</timestamp>
            <rect width="320" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="char_mem">
            <timestamp>2021-6-9T10:20:28</timestamp>
            <line x2="0" y1="352" y2="352" x1="64" />
            <rect width="64" x="320" y="212" height="24" />
            <line x2="384" y1="224" y2="224" x1="320" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-64" height="448" />
        </blockdef>
        <blockdef name="schematic_schematic_sch_tb">
            <timestamp>2021-6-9T9:48:48</timestamp>
            <rect width="320" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <block symbolname="lcd" name="XLXI_3">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_28(7:0)" name="mem_bus(7:0)" />
            <blockpin signalname="LCD_RS" name="lcd_rs" />
            <blockpin signalname="LCD_RW" name="lcd_rw" />
            <blockpin signalname="LCD_E" name="lcd_e" />
            <blockpin signalname="SF_D(11:8)" name="lcd_d(7:4)" />
            <blockpin signalname="XLXN_2(4:0)" name="mem_addr(4:0)" />
        </block>
        <block symbolname="char_mem" name="XLXI_4">
            <blockpin signalname="XLXN_2(4:0)" name="addr(4:0)" />
            <blockpin signalname="XLXN_13(0:255)" name="lcd_buffer(0:255)" />
            <blockpin signalname="XLXN_28(7:0)" name="lcd_bus(7:0)" />
            <blockpin signalname="CLK" name="CLK" />
        </block>
        <block symbolname="schematic_schematic_sch_tb" name="XLXI_5">
            <blockpin signalname="CLK" name="REAL_CLK" />
            <blockpin signalname="XLXN_13(0:255)" name="lcd_buffer(255:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_2(4:0)">
            <wire x2="896" y1="704" y2="816" x1="896" />
            <wire x2="960" y1="816" y2="816" x1="896" />
            <wire x2="1408" y1="704" y2="704" x1="896" />
            <wire x2="1408" y1="592" y2="592" x1="1392" />
            <wire x2="1408" y1="592" y2="704" x1="1408" />
        </branch>
        <branch name="CLK">
            <wire x2="704" y1="704" y2="704" x1="624" />
            <wire x2="704" y1="704" y2="1200" x1="704" />
            <wire x2="704" y1="1200" y2="1440" x1="704" />
            <wire x2="768" y1="1440" y2="1440" x1="704" />
            <wire x2="960" y1="1200" y2="1200" x1="704" />
            <wire x2="944" y1="336" y2="336" x1="704" />
            <wire x2="704" y1="336" y2="704" x1="704" />
        </branch>
        <iomarker fontsize="28" x="624" y="704" name="CLK" orien="R180" />
        <branch name="XLXN_13(0:255)">
            <wire x2="960" y1="944" y2="944" x1="896" />
            <wire x2="896" y1="944" y2="1312" x1="896" />
            <wire x2="1232" y1="1312" y2="1312" x1="896" />
            <wire x2="1232" y1="1312" y2="1440" x1="1232" />
            <wire x2="1232" y1="1440" y2="1440" x1="1216" />
        </branch>
        <instance x="944" y="624" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_28(7:0)">
            <wire x2="944" y1="592" y2="592" x1="928" />
            <wire x2="928" y1="592" y2="688" x1="928" />
            <wire x2="1392" y1="688" y2="688" x1="928" />
            <wire x2="1392" y1="688" y2="1072" x1="1392" />
            <wire x2="1392" y1="1072" y2="1072" x1="1344" />
        </branch>
        <instance x="768" y="1472" name="XLXI_5" orien="R0">
        </instance>
        <instance x="960" y="848" name="XLXI_4" orien="R0">
        </instance>
        <branch name="LCD_E">
            <wire x2="1424" y1="464" y2="464" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1424" y="464" name="LCD_E" orien="R0" />
        <branch name="LCD_RW">
            <wire x2="1424" y1="400" y2="400" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1424" y="400" name="LCD_RW" orien="R0" />
        <branch name="LCD_RS">
            <wire x2="1424" y1="336" y2="336" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1424" y="336" name="LCD_RS" orien="R0" />
        <branch name="SF_D(11:8)">
            <wire x2="1408" y1="528" y2="528" x1="1392" />
            <wire x2="1760" y1="528" y2="528" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1760" y="528" name="SF_D(11:8)" orien="R0" />
    </sheet>
</drawing>