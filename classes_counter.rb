class ClassesCounter
    def get_all(arrays, object_name)
        result = []
        arrays.each do | line |
            line.each { |i| result << i if i.class == object_name }
        end
        result
    end
end

# array = [[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]]

# p get_all(array, String)

# p get_all(array, Integer)