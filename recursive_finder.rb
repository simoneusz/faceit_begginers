class RecursiveFinder
  def last_nested_hash_value(hash)
    last_value = hash.flatten[-1]
    last_value = last_value.flatten[-1] while last_value.class != Array
    last_value
  end
end

hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2] } } } }
