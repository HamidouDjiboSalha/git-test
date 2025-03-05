# def couleur_vers_chiffre(couleur)
#     codes_couleurs = {
#       "black" => 0, "brown" => 1, "red" => 2, "orange" => 3, "yellow" => 4,
#       "green" => 5, "blue" => 6, "violet" => 7, "gray" => 8, "white" => 9
#     }
#     codes_couleurs[couleur.downcase] 
#   end
  
#   def obtenir_valeur_resistance(couleurs)
#     chiffres = couleurs.map { |c| couleur_vers_chiffre(c) }.compact
  
#     return "Pas assez de couleurs valides." if chiffres.length < 3
  
#     valeur = "#{chiffres[0]}#{chiffres[1]}" + "0" * chiffres[2]
#     valeur
#   end
  
#   print "Entrez trois couleurs séparées par un espace : "
#   entree_utilisateur = gets.chomp
#   liste_couleurs = entree_utilisateur.split("-")
  
#   resultat = obtenir_valeur_resistance(liste_couleurs)
#   puts "Valeur de la résistance : #{resultat} "

def est_couleur(couleur)
    code_couleur = { "black" => 0, "brown" => 1, "red" => 2, "orange" => 3, "yellow" => 4, 
    "green" =>5, "blue" => 6, "violet" => 7, "gray" => 8, "white" =>9 }
    code_couleur[couleur.downcase]
end

def resistance(couleurs)
    chiffre = couleurs.map {|c| est_couleur(c)}.compact
    return "pas de couleur valid" if chiffre.length < 3
    valeur = "#{chiffre[0]}#{chiffre[1]}" + "0" * chiffre[2]
    valeur
end

loop do
    puts "Entrez trois couleurs séparées par un tiré (ou -1 pour quitter) : "
    entree = gets.chomp
    liste_couleurs = entree.split("-")

    resultat = resistance(liste_couleurs)
    
    break if entree == "-1"
    puts "La valeur de la résistance est : #{resultat}"
end

def lecture
    if File.exist?("lire.json")
        JSON.parse(File.read("lire.json"))
    else
        []
    end
end

def ecriture(fichier)
    File.open("lire.json", "w") do |file|
        file.write(JSON.pretty_generate(fichier))
    end
end