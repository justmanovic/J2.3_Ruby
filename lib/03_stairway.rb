def monter_1_marche (step_number_in)
    puts "Yes ! tu montes d'une marche"
    step_number_out = step_number_in + 1
    puts "Tu es maintenant sur la marche #{step_number_out}"
    return step_number_out
end

def stagner (step_number_in)
    puts "Un coup pour rien ! tu ne bouges pas"
    step_number_out = step_number_in
    puts "Tu restes sur la marche #{step_number_out}"
    return step_number_out
end

def descendre_1_marche (step_number_in)
    if step_number_in > 0
        puts "Quel looser ! tu descends d'une marche"
        step_number_out = step_number_in - 1
        puts "Tu es maintenant sur la marche #{step_number_out}"
        return step_number_out
    else
        step_number_out = step_number_in
        puts "Tu es nul, mais tu es toujours en bas de l'échelle... Tu y restes !!"
        return step_number_out
    end

end

def bingo   
    puts "Incroyable, tu y es arrivé. C'est unbelibable !!!"
    puts "qui l'eu cru ?!"
end


# Méthode Lancer dé
def lancer_de
    dice_value = rand(6) + 1
    puts "Je lance les dés..."
    # 10.times do
    #     sleep(0.1)
    #     print "."
    # end
   puts "Tu a obtenu la valeur #{dice_value}"
    # sleep(1)
return dice_value
end


def monter_les_marches
    count = 0
    step_number_current = 0
    while step_number_current != 10
        count = count + 1
        puts count
        dice_value = lancer_de
        if dice_value == 1
            step_number_current = descendre_1_marche(step_number_current)
        elsif dice_value >= 5
            step_number_current = monter_1_marche(step_number_current)
        else
            step_number_current = stagner(step_number_current)
        end
    end
    bingo
    return count
end

# monter_les_marches


def average_finish_time
    average = 0
    
    100.times do
        average = average + monter_les_marches
        puts "Average = #{average}"
    end

    average = average / 100

    puts "Sur les 100 parties, la moyenne pour arriver à 10 est de : "
    puts average
    
end

average_finish_time