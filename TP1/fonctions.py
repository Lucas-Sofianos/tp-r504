def puissance(a,b):
	if not type(a) is int:	
		raise TypeError("Only integers are allowed")
	if not type(b) is int:	
		raise TypeError("Only integers are allowed")
	if a == 0 and b < 0 :
		raise TypeError("La puissance de zéro n’est pas définie pour des exposants négatifs")
		
	return(a**b)
