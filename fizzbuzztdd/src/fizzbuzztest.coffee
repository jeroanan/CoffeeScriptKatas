test_one_gives_one  = () -> assertEquals(1, fizzbuzz(1))
test_three_gives_fizz = () -> assertEquals("fizz", fizzbuzz(3))
test_six_gives_fizz = () -> assertEquals("fizz", fizzbuzz(6))
test_five_gives_buzz = () -> assertEquals("buzz", fizzbuzz(5))
test_fifteen_gives_fizzbuzz = () -> assertEquals("fizzbuzz", fizzbuzz(15))

tests = {
		"test one is one": test_one_gives_one,
		"test three gives fizz": test_three_gives_fizz,
		"test six gives fizz": test_six_gives_fizz,
		"test five gives buzz": test_five_gives_buzz,
		"test fifteen gives fizzbuzz": test_fifteen_gives_fizzbuzz
}

fizzbuzz = (n) -> 
			out = ""
			if n % 3 == 0 then out+="fizz" 
			if n % 5 ==0 then out+="buzz"
			if out == "" then out = n
			return out

TestCase("tests for fizzbuzz kata", tests)