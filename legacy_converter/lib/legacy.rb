def convert_row(key, val_ary)
  result = Hash.new

  val_ary.each do |val|
    result[val] = key
  end
  result
end

def convert_hash(hash) 
  final_result = Hash.new

  hash.each do |key, val|
    result = convert_row(key, val)
    final_result.merge!(result)
  end
  final_result
end
