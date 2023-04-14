ghdl -s ArtusDeChavagnacTask3.vhdl
ghdl -s ArtusDeChavagnacTask3_tb.vhdl
ghdl -a ArtusDeChavagnacTask3.vhdl
ghdl -a ArtusDeChavagnacTask3_tb.vhdl
ghdl -e ArtusDeChavagnacTask3_tb
ghdl -r ArtusDeChavagnacTask3_tb
ghdl -r ArtusDeChavagnacTask3_tb --vcd=ArtusDeChavagnacTask3.vcd
gtkwave ArtusDeChavagnacTask3.vcd