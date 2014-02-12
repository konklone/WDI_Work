def encode(string)
    encode = string.tr!('A-Za-z', 'N-ZA-Mn-za-m')
    return encode
  end
end

