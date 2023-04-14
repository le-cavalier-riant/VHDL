ghdl -a ArtusDeChavagnacTask2.vhd
ghdl -a ArtusDeChavagnacTask2_tb.vhd
ghdl -e ArtusDeChavagnacTask2_tb
ghdl -r ArtusDeChavagnacTask2_tb --vcd=ArtusDeChavagnacTask2.vcd
gtkwave ArtusDeChavagnacTask2.vcd