def est_isogramme?(texte)
    seen = {}
    texte.downcase.each_char do |char|
        if char.match?(/[a-z]/)
            return false if seen[char]
            seen[char] = true
        end
    end
    true
end

loop do
    puts "Entrer un mot ou une phrase (ou 'exit' pour quitter) :"

    input = gets.chomp

    if est_isogramme?(input)
        puts "\"#{input}\" est un isogramme"
    else
        puts "\"#{input}\" n'est pas un isogrmme"
    end
    break if input.downcase == "exit"
end
puts "programme terminé"