class ClassesCounter
  def get_all(array, type)
    array.each_with_object([]) do |element, result|
      if element.is_a?(type)
        result << element
      elsif element.is_a?(Array)
        result.concat(get_all(element, type))
      end
    end
  end
end
