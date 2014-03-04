require('legacy')
require('rspec')

describe('convert_row') do
  it('converts the elements of an array to keys with values as the key of the array') do
    convert_row({1 => ["a", "e", "i"]}).should(eq({"a" => 1, "e" => 1, "i" => 1}))
end
