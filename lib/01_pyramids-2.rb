def full_pyramid

    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print ">"
    layer_nb = gets.chomp.to_i
    if layer_nb > 25
        puts "tu n'es pas raisonnable, j'avais dit entre 1 et 25"
    else
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

end

full_pyramid