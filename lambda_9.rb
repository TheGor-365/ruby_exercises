def batman_ironman_proc
  victor = Proc.new { return 'BATMAN win' }
  victor.call
  'IRON MAN win'
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return 'BATMAN win' }
  victor.call
  'IRON MAN win'
end

puts batman_ironman_lambda
