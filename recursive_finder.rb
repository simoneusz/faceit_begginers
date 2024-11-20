
class RecursiveFinder
    def last_nested_hash_value(hash)
        last_value = hash.flatten[-1]
        while last_value.class != Array {}
            
        end
        last_value
    end
end