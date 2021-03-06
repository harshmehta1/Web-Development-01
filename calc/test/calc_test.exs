defmodule CalcTest do
  use ExUnit.Case
  doctest Calc

  test "input 1" do
    assert Calc.eval("3+4/12-32*1 ") == -29
  end

  test "input 2 - with spaces" do
       assert Calc.eval("( 2 / ( 22 - 8 ) )") == 0
  end

  test "input 3 - complex calculation" do
       assert Calc.eval("( 45 - 67 + ( (8 * 4 - 4) * 86 ) - 11 * (3 / 4) ) ") == 2386
  end

  test "input 4 - complex calculation" do
       assert Calc.eval(" 5 - 7 + (8 * 4) - 11 * (31 / 4) ") == -47
  end

  test "input 5 - complex calculation" do
       assert Calc.eval(" 100 / (2 / (2 / (2 / (2)))) ") == 100
  end
	   

end
