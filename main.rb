require_relative("classes_counter")
require_relative("formatize")
require_relative("print_circle")
require_relative("print_love")
require_relative("print_matrix_diagonal")
require_relative("recursive_finder")

class Main
    def use_classes(number)
        case number
        when 1
            instance = PrintLove.new()
            instance.print_love(30)
            
        when 2
            instance = PrintCircle.new()
            instance.print_circle(5)
            return nil
            
        when 3
            instance = PrintDiagonal.new()
            instance.print_diagonal(5)
            return nil
            
        when 4
            instance = RecursiveFinder.new()
            hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}

            return instance.last_nested_hash_value(hash)
        when 5
            instance = Formatize.new()
            return instance.formatize("Hello world", :camel)
        when 6
            instance = ClassesCounter.new()
            array = [[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]]

            return instance.get_all(array, Integer)
        end 
        return nil
    end
end

main = Main.new()
p main.use_classes(ARGV[0].to_i)