array = %i[rock scissors paper]

loop do
  mashine = array[rand(0..2)]

  print 'Make choice... [S]cissors, [R]ock, [P]aper:  '
  choice = gets.strip.capitalize

  case choice
  when choice == 'S' then user_input = :scissors
  when choice == 'R' then user_input = :rock
  when choice == 'P' then user_input = :paper
  end

  matrix = [
    %i[rock     scissors first],
    %i[rock     paper    second],
    %i[rock     rock     draw],
    %i[scissors rock     second],
    %i[scissors paper    first],
    %i[scissors scissors draw],
    %i[paper    scissors second],
    %i[paper    rock     first],
    %i[paper    paper    draw]
  ]

  puts "Mashine: \t#{mashine}"
  puts "Player:  \t#{user_input}"

  matrix.each do |item|
    if item[0] == user_input && item[1] == mashine
      case matrix
      when item[2] == :draw   then puts "The result:  \tDRAW"
      when item[2] == :first  then puts "The result:  \tYOU WIN"
      when item[2] == :second then puts "The result:  \tYOU LOSE"
      end
    end
  end
end
