def signup
    puts "indique un mot de passe :"
    mot_de_passe = gets.chomp
    return mot_de_passe
end


def welcome_screen
    puts "Bienvenue dans ton espace secret"
end


def login(pwd)
    puts "Quel est le mot de passe ?"
    print ">"
    mot_de_passe_typed = gets.chomp

    while mot_de_passe_typed != pwd
        puts "Essaie encore"
        print ">"
        mot_de_passe_typed = gets.chomp
    end

    puts "Bingooo"

    return true

end



def perform
    pwd = signup
    pwd_check = login(pwd)
    if pwd_check == true
        10.times do |i|
            print "."
            sleep(0.5)
        end
        puts ""
        welcome_screen
    else
        return
    end
end

perform