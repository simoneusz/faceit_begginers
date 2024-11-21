class ClassesCounter
  def get_all(arrays, object_name)
    arrays.flatten.filter do |i|
      i.instance_of?(object_name)
    end
  end
end
