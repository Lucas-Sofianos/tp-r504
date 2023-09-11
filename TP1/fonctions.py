def puissance(a,b):
	if not type(a) is int:	
		raise TypeError("Only integers are allowed")
	if not type(b) is int:	
		raise TypeError("Only integers are allowed")
	if b == 0 :
		if a < 0 : 
			result = -1
			return result
		else :
			result = 1
			return result
	if a == 0 and b < 0 :
		raise TypeError("La puissance de zéro n’est pas définie pour des exposants négatifs")
	
	#fonctionne avec la ligne du dessous
	#return (a**b)
	n=0
	if b < 0 : 
		b=b*-1
		n=1 #déclaration de valeur négative présente pour b
		
	result = a
	for i in range (b-1) : 
		result=a*result
		print(result)
	if n==1 : 
		result= 1/result
	return result

