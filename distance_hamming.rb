def distance_hamming(ham1, ham2)

    puts "Les brins doivent avoir la même longueur" if ham1.length != ham2.length
    distance = 0
    ham1.chars.zip(ham2.chars) do |char1, char2|
        distance += 1 if char1 != char2
    end
    distance

end

ham1 = "GAGCCTACTAACGGGATT"
ham2 = "CATCGTAATGACGGCCTG"

puts distance_hamming(ham1, ham2)