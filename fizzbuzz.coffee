fizzbuzz = (n) ->
			out = ''
			if n % 3 is 0 then out='fizz'
			if n % 5 is 0 then out+='buzz'
			if out is '' then out = n
			return out

for num in [1..15]
	 console.log(fizzbuzz(num))