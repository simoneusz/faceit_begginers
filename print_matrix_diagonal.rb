matrix_size = ARGV[0].to_i

matrix_size.size.times.each do |i|
    matrix_size.size.times.each do |j|
        i == j ? print("1 ") : print("0 ")
    end
    puts ""
end