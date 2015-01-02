# Created : Sanjay Rai
# Automated Builds of all configurations

.PHONY: ARTIX_AC701 ARTIX_AC701_CLEAN KINTEX_KC705 KINTEX_KC705_CLEAN

ARTIX_AC701:
	cd ARTIX_AC701/axi_jtag_debugger/vivado_project && vivado -mode batch -source vivado_project.tcl 
	cd ARTIX_AC701/axi_jtag_debugger_example/vivado_prj && vivado -mode batch -source vivado_project.tcl 
	cd ARTIX_AC701/axi_jtag_debugger_IPI_example/vivado_prj && vivado -mode batch -source vivado_project.tcl 
	cd ARTIX_AC701/axi_jtag_debugger_IPI_example_2/vivado_prj && vivado -mode batch -source vivado_project.tcl 

ARTIX_AC701_CLEAN:
	cd ARTIX_AC701/axi_jtag_debugger/vivado_project && ./mk_clean.bat || true 
	cd ARTIX_AC701/axi_jtag_debugger_example/vivado_prj && ./mk_clean.bat || true 
	cd ARTIX_AC701/axi_jtag_debugger_IPI_example/vivado_prj && ./mk_clean.bat || true 
	cd ARTIX_AC701/axi_jtag_debugger_IPI_example_2/vivado_prj && ./mk_clean.bat || true 

KINTEX_KC705:
	cd KINTEX_KC705/axi_jtag_debugger/vivado_project && vivado -mode batch -source vivado_project.tcl 
	cd KINTEX_KC705/axi_jtag_debugger_example/vivado_prj && vivado -mode batch -source vivado_project.tcl 
	cd KINTEX_KC705/axi_jtag_debugger_IPI_example/vivado_prj && vivado -mode batch -source vivado_project.tcl 
	cd KINTEX_KC705/axi_jtag_debugger_IPI_example_2/vivado_prj && vivado -mode batch -source vivado_project.tcl 

KINTEX_KC705_CLEAN:
	cd KINTEX_KC705/axi_jtag_debugger/vivado_project && ./mk_clean.bat || true 
	cd KINTEX_KC705/axi_jtag_debugger_example/vivado_prj && ./mk_clean.bat || true 
	cd KINTEX_KC705/axi_jtag_debugger_IPI_example/vivado_prj && ./mk_clean.bat || true 
	cd KINTEX_KC705/axi_jtag_debugger_IPI_example_2/vivado_prj && ./mk_clean.bat || true 
