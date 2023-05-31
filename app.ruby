require 'securerandom'

def generer_mot_de_passe(longueur)
  caracteres = [('a'..'z'), ('A'..'Z'), (0..9)].map { |range| range.to_a }.flatten
  mot_de_passe = ""
  longueur.times do
    mot_de_passe += caracteres.sample.to_s
  end
  return mot_de_passe
end

puts "Bonjour! Ce programme vous permet de générer des mots de passe aléatoires."
puts "Veuillez entrer la longueur souhaitée pour votre mot de passe :"
longueur = gets.chomp.to_i

mot_de_passe = generer_mot_de_passe(longueur)

puts "Votre nouveau mot de passe est : #{mot_de_passe}"

