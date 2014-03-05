test_empty_string_gives_empty_string = () -> assertEquals("", roman(""))
test_i_gives_one = () -> assertEquals(1, roman("I"))
test_v_gives_five = () -> assertEquals(5, roman("V"))
test_x_gives_ten = () -> assertEquals(10, roman("X"))
test_l_gives_fifty = () -> assertEquals(50, roman("L"))
test_c_gives_one_hundred = () -> assertEquals(100, roman("C"))
test_d_gives_five_hundred = () -> assertEquals(500, roman("D"))
test_m_gives_one_thousand = () -> assertEquals(1000, roman("M"))
test_ii_gives_two = () -> assertEquals(2, roman("II"))
test_iv_gives_four = () -> assertEquals(4, roman("IV"))
test_mxm_gives_nineteenninety = () -> assertEquals(1990,  roman("MXM"))

tests = {
		"test_empty_string_gives_empty_string": test_empty_string_gives_empty_string
		"test_i_gives_one": test_i_gives_one,
		"test_v_gives_five": test_v_gives_five,
		"test_x_gives_ten": test_x_gives_ten,
		"test_l_gives_fifty": test_l_gives_fifty,
		"test_c_gives_one_hundred": test_c_gives_one_hundred,
		"test_d_gives_five_hundred": test_d_gives_five_hundred,
		"test_m_gives_one_thousand": test_m_gives_one_thousand,
		"test_ii_gives_two": test_ii_gives_two,
		"test_iv_gives_four": test_iv_gives_four,
		"test_mxm_gives_nineteenninety": test_mxm_gives_nineteenninety
}

TestCase("tests for roman numerals kata", tests)

roman = (numeral) -> 
		numerals = { "I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000 }
		out = 0
		previousDigit = "I"

		for digit in numeral.split("").reverse()
			 if numerals[digit] >= numerals[previousDigit] then out += numerals[digit] else out -= numerals[digit]
			 previousDigit = digit
		if out is 0 then "" else out
			 