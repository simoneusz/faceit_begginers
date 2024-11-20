class PrintLove
    def print_love(number_of_prints)
        (1..number_of_prints).each { |i| [10,25,25].include?(i) ? puts("#{i}: ruby") : puts("#{i}: <3 ruby")}
    end
end