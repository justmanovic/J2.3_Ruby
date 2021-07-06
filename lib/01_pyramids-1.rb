def half_pyramid

    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print ">"
    nb = gets.chomp.to_i

    while(nb>25||nb<1) 
    puts "Try again: entre un nombre entre 1 et 25"
    nb = gets.chomp.to_i
    end

    puts "Voici la pyramide : "


    nb.times do |i| # Une ligne par étage
    (nb-i-1).times do
        print " "
    end
    (i+1).times do # Pour chaque ligne en commençant par la ligne 1...
        print "#" # ...afficher autant de # que l'index de la ligne en question
    end
    puts "" # Pour sauter une ligne à chaque itération de la boucle
    end

end

half_pyramid