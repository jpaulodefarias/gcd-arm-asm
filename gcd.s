			; Calculates the Greatest Commin Divisor (GCD)
			
			bl		init
			
init
			mov		r1, #81 ; Register A.
			mov		r2, #45 ; Register B.
			bl		compare
			end
			
compare
			cmp		r1, r2
			blgt		subtract_a ; If A is greater than B...
			bllt		subtract_b ; If A is lesser than B...
			end
			
subtract_a
			sub		r1, r1, r2 ; ... A = A - B
			cmp		r1, r2
			bne		compare
			end
			
subtract_b
			sub		r2, r2, r1 ; ... B = B - A
			cmp		r1, r2
			bne		compare
			end
			
			; When A equals B, the result was found.
