// Generated by CoffeeScript 1.7.1
(function() {
  var roman, test_c_gives_one_hundred, test_d_gives_five_hundred, test_empty_string_gives_empty_string, test_i_gives_one, test_ii_gives_two, test_iv_gives_four, test_l_gives_fifty, test_m_gives_one_thousand, test_mxm_gives_nineteenninety, test_v_gives_five, test_x_gives_ten, tests;

  test_empty_string_gives_empty_string = function() {
    return assertEquals("", roman(""));
  };

  test_i_gives_one = function() {
    return assertEquals(1, roman("I"));
  };

  test_v_gives_five = function() {
    return assertEquals(5, roman("V"));
  };

  test_x_gives_ten = function() {
    return assertEquals(10, roman("X"));
  };

  test_l_gives_fifty = function() {
    return assertEquals(50, roman("L"));
  };

  test_c_gives_one_hundred = function() {
    return assertEquals(100, roman("C"));
  };

  test_d_gives_five_hundred = function() {
    return assertEquals(500, roman("D"));
  };

  test_m_gives_one_thousand = function() {
    return assertEquals(1000, roman("M"));
  };

  test_ii_gives_two = function() {
    return assertEquals(2, roman("II"));
  };

  test_iv_gives_four = function() {
    return assertEquals(4, roman("IV"));
  };

  test_mxm_gives_nineteenninety = function() {
    return assertEquals(1990, roman("MXM"));
  };

  tests = {
    "test_empty_string_gives_empty_string": test_empty_string_gives_empty_string,
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
  };

  TestCase("tests for roman numerals kata", tests);

  roman = function(numeral) {
    var digit, numerals, out, previousDigit, _i, _len, _ref;
    numerals = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000
    };
    out = 0;
    previousDigit = "I";
    _ref = numeral.split("").reverse();
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      digit = _ref[_i];
      if (numerals[digit] >= numerals[previousDigit]) {
        out += numerals[digit];
      } else {
        out -= numerals[digit];
      }
      previousDigit = digit;
    }
    if (out === 0) {
      return "";
    } else {
      return out;
    }
  };

}).call(this);