def puissance(a,b):
	result = 1
	if not type(a) is int:	
		raise TypeError("Only integers are allowed")
	if not type(b) is int:	
		raise TypeError("Only integers are allowed")
	if a == 0 and b < 0 :
		raise TypeError("La puissance de zéro n’est pas définie pour des exposants négatifs")
	
	#fonctionne avec la ligne du dessous
	#return (a**b)
	
	for i in range (b) : 
		result=a*a
	return result
	
