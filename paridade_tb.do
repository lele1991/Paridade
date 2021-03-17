# ============================================================================
# Name        : tb.do
# Author      : Let�cia de Oliveira Nunes
# Version     : 0.1
# Copyright   : Renan, Departamento de Eletr�nica, Florian�polis, IFSC
# Description : Paridade
# ============================================================================

#Cria biblioteca do projeto
vlib work

#compila projeto: todos os aquivo. Ordem � importante
vcom paridade.vhd 
vcom testbench.vhd

#Simula (work � o diretorio, testbench � o nome da entity)
vsim -t ns work.testbench

#Mosta forma de onda
view wave

#Adiciona ondas espec�ficas
# -radix: binary, hex, dec
# -label: nome da forma de onda
#sinais do testbench
add wave -radix bin  /par_inputT
add wave -radix bin  /par_enableT
add wave -radix bin  /par_outT

#Como mostrar sinais internos do processo

#Simula at� um 100ns
run 100ns

wave zoomfull
#write wave wave.ps