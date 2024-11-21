require_relative('classes_counter')
require_relative('formatize')
require_relative('print_circle')
require_relative('print_love')
require_relative('print_matrix_diagonal')
require_relative('recursive_finder')

class Main
  def use_classes(number)
    case number
    when 1
      instance = PrintLove.new
      instance.print_love(30)
      nil
    when 2
      instance = PrintCircle.new
      instance.print_circle(15)
      nil

    when 3
      instance = PrintDiagonal.new
      instance.print_diagonal(5)
      nil

    when 4
      instance = RecursiveFinder.new
      hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2] } } } }

      instance.last_nested_hash_value(hash, :key7)
    when 5
      instance = Formatize.new
      instance.formatize('Hello world', :css)
    when 6
      instance = ClassesCounter.new
      array = [[1, 2, 3, 4, '1'], %w[2 5 10], [111, 222, 333, 444], %w[i love ruby],
               { key: 'value' }, [[['text', 100_000]]]]

      instance.get_all(array, Array)
    end
  end
end

main = Main.new
p main.use_classes(ARGV[0].to_i)
