def full_pyramid

    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages - impaires -  veux-tu ?"
    print ">"
    layer_nb = gets.chomp.to_i
    if layer_nb %2 == 0
        puts "je t'avais dit impaire, coquinou"
        puts "tant pis pour toi"
        return
    end

    if layer_nb > 25
        puts "tu n'es pas raisonnable, j'avais dit entre 1 et 25"
    else
        layer_nb = (layer_nb - 1)/2 + 1
        pyramid = "#"
        layer_nb.times do |i|
            (layer_nb-i-1).times do
                print " "
            end
            print pyramid
            puts ""
            pyramid = pyramid << "##"
        end
    end
    (layer_nb-1).times do |i|
        (i + 1).times do
            print " "
        end
        print pyramid[0, (layer_nb - i - 1) * 2 - 1]
        puts ""
    end

end

full_pyramid