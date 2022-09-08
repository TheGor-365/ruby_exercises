arr = [:rock, :scissors, :paper]

loop do
  c_choice = arr[rand(0..2)]

  print "Make choice... (S)cissors, (R)ock, (P)aper:  "
  choice = gets.strip.capitalize

  if choice == "S"
    u_choice = :scissors
  elsif choice == "R"
    u_choice = :rock
  elsif choice == "P"
    u_choice = :paper
  end

  matrix = [
    [:rock, :scissors, :first],
    [:rock, :paper, :second],
    [:rock, :rock, :draw],
    [:scissors, :rock, :second],
    [:scissors, :paper, :first],
    [:scissors, :scissors, :draw],
    [:paper, :scissors, :second],
    [:paper, :rock, :first],
    [:paper, :paper, :draw]
  ]

  puts "Computer: \t#{c_choice}"
  puts "User:     \t#{u_choice}"

  matrix.each do |item|
    if item[0] == u_choice && item[1] == c_choice
      if item[2] == :draw
        puts "The result:  \tDRAW"
      elsif item[2] == :first
        puts "The result:  \tYOU WIN"
      elsif item[2] == :second
        puts "The result  \tYOU LOSE"
      end
    end
  end
end
