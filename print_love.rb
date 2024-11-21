class PrintLove
  def print_love(number_of_prints)
    (1..number_of_prints).each do |i|
      [10, 25, 30].include?(i) ? puts("#{i}: ruby") : puts("#{i}: <3 ruby")
    end
  end
end
