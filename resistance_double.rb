def est_couleur(couleur)
    code_couleur = { "black" => 0, "brown" => 1, "red" => 2, "orange" => 3, "yellow" => 4, 
    "green" =>5, "blue" => 6, "violet" => 7, "gray" => 8, "white" =>9 }
    code_couleur[couleur.downcase]
end

def resistance(couleurs)
    chiffre = couleurs.map {|c| est_couleur(c)}.compact
    return "pas de couleur valid" if chiffre.length < 2
    puts "La valeur de la résistance est : #{chiffre[0]}#{chiffre[1]}"
end


puts "Entrez deux couleurs séparées par un tiré : "
entree = gets.chomp
liste_couleurs = entree.split("-")

puts resistance(liste_couleurs)

