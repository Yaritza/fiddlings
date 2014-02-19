require_relative 'game'
require 'pry'

puts "Hi! Would you like to join me for a little game of Tic-Tac-Toe?"

answer = gets.chomp.downcase

if answer = "yes" || answer = "y"  || answer = "ok" || answer = "okay" || answer = "yeah"
             puts "Great. Let'splay! \n \n You will be \"X\", and I will be \"O.\" "


            gboard = {
                     1 => 1,
                     2 => 2,
                     3 => 3,
                     4 => 4,
                     5 => 5,
                     6 => 6,
                     7 => 7,
                     8 => 8,
                     9 => 9,
           }

               gboard_grid =

                      "   #{gboard[1]}      |    #{gboard[2]}    |     #{gboard[3]}\n
                      --------------------------------\n
                         #{gboard[4]}       |   #{gboard[5]}    |     #{gboard[6]}\n
                      --------------------------------\n
                          #{gboard[7]}      |  #{gboard[8]}     |     #{gboard[9]}\n "


            puts  "#{gboard_grid} \n Choose your position from the numbers above."

            #Captures player's choice in a variable.
            position = gets.chomp.to_i

            #Prompts user for valid numerical entry. Does not accept text as "anytext".to_i =0.
            #Nil condition is there just I case overlooked other possible  types of invalid entries.

                      if position < 1 || position > 9 || position == nil
                            puts "Please choose a valid number from 1 to 9."
                            position = gets.chomp.to_i
                      end

            game = Tic_tac_toe.new(gboard, position, gboard_grid)
            puts "#{game.draw(position)}"  #<--\n -----SOMETHINING IS OFF HERE!

else

            puts "Ah, perhaps some other time. Good-bye..."



end

