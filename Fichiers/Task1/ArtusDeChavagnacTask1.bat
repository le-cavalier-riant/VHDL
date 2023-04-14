ghdl -a ArtusDeChavagnacTask1.vhd
ghdl -a ArtusDeChavagnacTask1_tb.vhd
ghdl -e ArtusDeChavagnacTask1_tb
ghdl -r ArtusDeChavagnacTask1_tb --vcd=ArtusDeChavagnacTask1.vcd
gtkwave ArtusDeChavagnacTask1.vcd