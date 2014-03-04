def convert_hash(hash) 
  result = Hash.new

  hash.each do |key, val_ary|
    val_ary.each do |val|
      result[val] = key
    end
  end
  result
end
