def convert_hash(hash) 
  result = Hash.new

  hash.each do |key, val_ary|
    row = Hash.new
    val_ary.each do |val|
      row[val] = key
    end
    result.merge!(row)
  end
  result
end
