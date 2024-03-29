set_property PACKAGE_PIN V17 [get_ports {data_in[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[0]}]
set_property PACKAGE_PIN V16 [get_ports {data_in[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[1]}]
set_property PACKAGE_PIN W16 [get_ports {data_in[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[2]}]
set_property PACKAGE_PIN W17 [get_ports {data_in[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[3]}]
set_property PACKAGE_PIN W15 [get_ports {data_in[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[4]}]
set_property PACKAGE_PIN V15 [get_ports {data_in[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[5]}]
#set_property PACKAGE_PIN W14 [get_ports {data_in[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {data_in[6]}]
#set_property PACKAGE_PIN W13 [get_ports {data_in[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {data_in[7]}]
set_property PACKAGE_PIN U16 [get_ports {data_out[0]}]
set_property PACKAGE_PIN E19 [get_ports {data_out[1]}]
set_property PACKAGE_PIN U19 [get_ports {data_out[2]}]
set_property PACKAGE_PIN V19 [get_ports {data_out[3]}]
set_property PACKAGE_PIN W18 [get_ports {data_out[4]}]
set_property PACKAGE_PIN U15 [get_ports {data_out[5]}]
set_property PACKAGE_PIN U14 [get_ports {data_out[6]}]
set_property PACKAGE_PIN V14 [get_ports {data_out[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[0]}]

set_property PACKAGE_PIN V13 [get_ports {data_tx[0]}]
set_property PACKAGE_PIN V3 [get_ports {data_tx[1]}]
set_property PACKAGE_PIN W3 [get_ports {data_tx[2]}]
set_property PACKAGE_PIN U3 [get_ports {data_tx[3]}]
set_property PACKAGE_PIN P3 [get_ports {data_tx[4]}]
set_property PACKAGE_PIN N3 [get_ports {data_tx[5]}]
set_property PACKAGE_PIN P1 [get_ports {data_tx[6]}]
set_property PACKAGE_PIN L1 [get_ports {data_tx[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_tx[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_tx[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_tx[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_tx[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_tx[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_tx[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_tx[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_tx[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property PACKAGE_PIN A18 [get_ports tx]
set_property IOSTANDARD LVCMOS33 [get_ports tx]
set_property PACKAGE_PIN B18 [get_ports rx]
set_property IOSTANDARD LVCMOS33 [get_ports rx]
set_property PACKAGE_PIN T18 [get_ports reset]
#set_property PACKAGE_PIN U18 [get_ports tx_start]
#set_property IOSTANDARD LVCMOS33 [get_ports tx_start]
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

set_property PACKAGE_PIN H1 [get_ports PWM1]
set_property IOSTANDARD LVCMOS33 [get_ports PWM1]
set_property PACKAGE_PIN J3 [get_ports PWM2]
set_property IOSTANDARD LVCMOS33 [get_ports PWM2]
set_property PACKAGE_PIN K3 [get_ports PWM3]
set_property IOSTANDARD LVCMOS33 [get_ports PWM3]
set_property PACKAGE_PIN A15 [get_ports PWM4]
set_property IOSTANDARD LVCMOS33 [get_ports PWM4]
set_property PACKAGE_PIN K17 [get_ports PWM5]
set_property IOSTANDARD LVCMOS33 [get_ports PWM5]
set_property PACKAGE_PIN L17 [get_ports PWM6]
set_property IOSTANDARD LVCMOS33 [get_ports PWM6]


set_property PACKAGE_PIN U18 [get_ports tx_enable]
set_property IOSTANDARD LVCMOS33 [get_ports tx_enable]

create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]
