class ClassesCounter
  def get_all(arrays, object_name)
    arrays.flatten.filter do |i|
      i.instance_of?(object_name)
    end
  end
end

# array = [[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]]

# p get_all(array, String)

# p get_all(array, Integer)
