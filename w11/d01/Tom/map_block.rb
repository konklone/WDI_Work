def map(input_collection)
  length = input_collection.length
  index = 0
  output_collection = []
  while index < length
    output_collection << yield(input_collection[index])
    index += 1
  end
  return output_collection
end