pp ['a', 'b', 'c', 'b'].tally



puts



order_one = %i{ pen pencil eraser sharpener pen pen }
order_two = %i{ sharpener eraser eraser eraser eraser sharpener sharpener sharpener sharpener }

pp tally_one    = order_one.tally
pp tally_two    = order_two.tally
pp weekly_tally = (order_one + order_two).tally



puts



order_one = %i{ pen pencil eraser sharpener pen pen }
order_two = %i{ sharpener eraser eraser eraser eraser sharpener sharpener sharpener sharpener }

pp weekly_tally = {}
pp weekly_tally = order_one.tally
pp weekly_tally = order_two.tally



puts




order = %i{ pen pencil eraser sharpener pen pen }

pp tally = order.tally
pp tally[:ruler]



puts



order = %i{ pen pencil eraser sharpener pen pen }

pp tally = order.tally { puts "Proc called" }
pp tally[:ruler]



puts



order = %i{ pen pencil eraser sharpener pen pen }

pp tally = order.tally
