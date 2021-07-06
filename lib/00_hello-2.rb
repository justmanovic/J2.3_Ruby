def say_hello_first_name
    puts "Quel est ton prénom ?"
    print ">"
    first_name = gets.chomp
    puts "Bonjour, #{first_name}"

end

say_hello_first_name