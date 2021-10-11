from goto import with_goto
import FuncionesIntermedias as F3D
heap = F3D.heap
stack = []

@with_goto 
def main(): 
	global heap
	global stack


	goto .END

	label .F1
	#**** Funcion *****

	# Parametros 
	p0

	# Retorno 
	global r0

	# Declaraciones 
	#Fin declaraciones


	print(" |>> " + str(p0)) 


	# Return
	r0 = p0
	goto .R


	goto .R


	label .F2
	#**** Funcion *****

	# Parametros 
	p0

	# Retorno 
	global r1

	# Declaraciones 
	#Fin declaraciones


	print(" |>> " + str(p0)) 


	# Return
	r1 = p0
	goto .R


	goto .R


	label .R
	u = stack.pop()
	if u == "F1": 
		goto .F1
	if u == "F2": 
		goto .F2

	label .END
