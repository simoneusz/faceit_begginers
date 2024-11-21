class RecursiveFinder
  def last_nested_hash_value(hash, key)
    if hash.respond_to?(:key?) && hash.key?(key)
      hash[key]
    elsif hash.respond_to?(:each)
      r = nil
      hash.find do |*a|
        r = last_nested_hash_value(a.last, key)
      end
      r
    end
  end
end

# hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2] } } } }
