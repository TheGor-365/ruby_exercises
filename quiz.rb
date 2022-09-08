name = ARGV[0]

print "Enter your name: "
name = STDIN.gets.strip.capitalize

while name == ""
  print "Enter your name: "
  name = STDIN.gets.strip.capitalize
end

puts "Hey #{name}, answer the questions..."
sleep 0.3

questions = [
  "1. Have you ever searched your partner's gadgets for evidence of infidelity?",
  "2. You don't particularly like the fact that your partner is communicating with the opposite sex (without flirting). Will you tell him / her about this?",
  "3. Could you get into a fight or at least just push an overly Intrusive opponent or rival?",
  "4. At the festival, your couple was invited to a slow dance. How will you react?",
  "5. This is the third time he/she has seen friends in a week, although you have never even gone out for a walk together. How will you behave?",
  "6. How often do you call your partner to check where they are and with whom?",
  "7. He/she affectionately called(a) my colleague Anya/by Dima. Your reaction?",
  "8. Someone called your partner in the middle of the night. Your thoughts?",
  "9. How will you behave if your couple suddenly starts flirting with someone else?",
  "10. How do you feel about your partner's past?",
  "11. Your partner stayed at work for an hour or two all week, arguing that it was necessary to finish an important project. What do you think about this?",
  "12. Your couple is invited to a hen / stag party, where 100% will be a Striptease. Your reaction?",
  "13. Did you purposefully introduce your friends to him / her?",
  "14. Your best friend refused to go to the movies with you. And on the day of the movie premiere, you saw him / her with another person. Your reaction?",
  "15. Do you believe in friendship between men and women?",
  "16. Have you ever made a public scandal out of jealousy?",
  "17. Have you ever been told that you are very jealous?",
  "18. You seriously suspect him / her of cheating. How will he behave next?",
  "19. Have you been cheated on in the past (not necessarily by your current partner)?",
  "20. How would you react if your partner expressed a desire to communicate with their exes?"
]

results =[
  "Are you jealous",
  "You're not jealous",
  "You asshole"
]

yes_answers = 0

questions.each do |item|
  puts "\n#{item}"
  user_input = nil

  while user_input != "Y" && user_input != "N" && user_input != "W"
    print "Enter your choice (Y)es, (N)o or (W)hatever: "
    user_input = STDIN.gets.strip.capitalize
  end
  yes_answers += 1 if user_input == "Y"
end

puts "\n#{name}"
puts "Your answers score is: #{yes_answers}"

if yes_answers >= 10
  puts results[0]
elsif yes_answers < 10 && yes_answers > 0
  puts results[1]
elsif yes_answers <= 0
  puts results[2]
end
