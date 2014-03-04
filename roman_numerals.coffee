getNumerals = (r) ->
				if r is undefined or r is '' then return ""
				numerals = {"I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000}
				total = 0
				previousNumeral = "I"
				for c in r.split("").reverse()
					 if numerals[c]>=numerals[previousNumeral] then total += numerals[c] else total-=numerals[c]
					 previousNumeral=c
				return total

testGetNumerals = (inNumeral, expected) ->
				n = getNumerals(inNumeral)
				if n is expected then console.log(inNumeral + " is " + expected + " as expected.")
				if n isnt expected then console.log(inNumeral + " is NOT "  + expected + ". instead it was " + n)
					 
testGetNumerals(undefined, '')
testGetNumerals('', '')
testGetNumerals('I', 1)
testGetNumerals("V", 5)
testGetNumerals("X", 10)
testGetNumerals("L", 50)
testGetNumerals("C", 100)
testGetNumerals("D", 500)
testGetNumerals("M", 1000)
testGetNumerals("II", 2)
testGetNumerals("IV", 4)
testGetNumerals("VI", 6)
testGetNumerals("MXM", 1990)
