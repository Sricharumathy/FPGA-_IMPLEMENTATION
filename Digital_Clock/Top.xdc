set_property -dict { PACKAGE_PIN N11    IOSTANDARD LVCMOS33 } [get_ports { clk }];
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33 PULLDOWN true} [get_ports {rst}]; #Button-center
set_property -dict { PACKAGE_PIN F2    IOSTANDARD LVCMOS33 } [get_ports {digit[0]}]; #LSB
set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports {digit[1]}];
set_property -dict { PACKAGE_PIN G5    IOSTANDARD LVCMOS33 } [get_ports {digit[2]}];
set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports {digit[3]}]; #MSB
 
set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports {seg[0]}];#A
set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports {seg[1]}];#B
set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports {seg[2]}];#C
set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports {seg[3]}];#D
set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports {seg[4]}];#E
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports {seg[5]}];#F
set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports {seg[6]}];#G

#Timing constraint
create_clock -period 20.000 -name sys_clk [get_ports clk]
