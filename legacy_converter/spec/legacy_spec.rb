require('legacy')
require('rspec')

describe('convert_row') do
  it('converts the elements of an array to keys with values being the original key') do
    convert_row(1, ["a", "e", "i"]).should(eq({"a" => 1, "e" => 1, "i" => 1}))
  end
end

describe('convert_hash') do
  it('converts a hash with arrays for values into a new hash with the elements
   of all the arrays as new keys with the respective  key to each original
    array acting as the new value') do
    test_hash = { 1 => ["A", "E", "I"],
                  2 => ["D", "G"],
                  3 => ["B", "C", "M", "P"]}
    convert_hash(test_hash).should(eq({ "A" => 1,
                                        "B" => 3,
                                        "C" => 3,
                                        "D" => 2,
                                        "E" => 1,
                                        "G" => 2,
                                        "I" => 1,
                                        "M" => 3,
                                        "P" => 3}))
  end
end
