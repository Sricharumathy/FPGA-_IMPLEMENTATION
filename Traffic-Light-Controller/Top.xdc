set_property -dict { PACKAGE_PIN N11    IOSTANDARD LVCMOS33 } [get_ports {clk}];
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33 PULLDOWN true} [get_ports {rst}]; #Button-center
set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { red }];#LSB
set_property -dict { PACKAGE_PIN H3    IOSTANDARD LVCMOS33 } [get_ports { yellow }];
set_property -dict { PACKAGE_PIN J1    IOSTANDARD LVCMOS33 } [get_ports { green }];
# Timing constraint
create_clock -period 20.000 -name sys_clk [get_ports clk]

