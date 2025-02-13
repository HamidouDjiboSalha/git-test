def isogramme(mots)

    except = ["-", " "]

    lettres = mots.downcase.chars

    lettres.each do |lettre|
        nombre = 0
        lettres.each do |l|
            if ! except.include?(l)
                if lettre == l
                    nombre += 1
                end
            end
        end
        if nombre > 1
            puts "#{mots} n'est pas un isogramme"
            return
        end
    end

    puts "#{mots} est un isogramme"

end

puts isogramme("lumberjacks")
puts isogramme("background")
puts isogramme("downstream")
puts isogramme("six-year-old")
puts isogramme("B o n")

puts isogramme("Salut-ça-va")
puts isogramme("Bonjour comment ça va?")