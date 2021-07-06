def ask_first_name
    puts "Quel est ton prénom ?"
    print ">"
    first_name = gets.chomp
    return first_name
end

def say_hello(name)
    puts "Bonjour, #{name}"
end

# METHODS ARE ABOVE
first_name = ask_first_name
say_hello(first_name)