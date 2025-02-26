class Ecole 

    def initialize
        @liste = Hash.new { |hash, key| hash[key] = [] }  
    end

    def ajout_eleve(nom, classe)
        if @liste[classe].include?(nom)
            puts "#{nom} n'est pas dans la classe #{classe}."
        else
            @liste[classe] << nom
            puts "OK"
        end
    end

    def classe_eleve(classe)
        eleve=@liste[classe]
        if @liste[classe].empty?
            puts "Aucun eleve en classe #{classe}"
        else
            puts "Il exist l'eleve #{eleve} en classe #{classe}"
        end
    end

    def tous_les_eleves
        if @liste.empty?
            puts "Il n'existe aucun eleve"
        end
    end
end
ecole = Ecole.new
puts ecole.ajout_eleve("Jim", 2)
puts ecole.classe_eleve(2)
puts ecole.tous_les_eleves