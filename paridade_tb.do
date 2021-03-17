# ============================================================================
# Name        : tb.do
# Author      : Letícia de Oliveira Nunes
# Version     : 0.1
# Copyright   : Renan, Departamento de Eletrônica, Florianópolis, IFSC
# Description : Paridade
# ============================================================================

#Cria biblioteca do projeto
vlib work

#compila projeto: todos os aquivo. Ordem é importante
vcom paridade.vhd 
vcom testbench.vhd

#Simula (work é o diretorio, testbench é o nome da entity)
vsim -t ns work.testbench

#Mosta forma de onda
view wave

#Adiciona ondas específicas
# -radix: binary, hex, dec
# -label: nome da forma de onda
#sinais do testbench
add wave -radix bin  /par_inputT
add wave -radix bin  /par_enableT
add wave -radix bin  /par_outT

#Como mostrar sinais internos do processo

#Simula até um 100ns
run 100ns

wave zoomfull
#write wave wave.ps