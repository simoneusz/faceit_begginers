#Вывести в консоль, 30 раз "<3 ruby", каждый в новой строке, 10ый, 20ый, и 25ый
#вывод вывести просто "ruby"

number_of_prints = 30

(1..number_of_prints).each { |i| [10,25,25].include?(i) ? puts("#{i}: ruby") : puts("#{i}: <3 ruby")}