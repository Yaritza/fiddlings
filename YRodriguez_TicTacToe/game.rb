
class Tic_tac_toe

            #Allows  reading and setting of gboard (shorthand for 'game board.), position (player's attempted move, and bot's move),  ''
            attr_accessor :gboard, :positon , :bot_draw

            # The gameboard grid format is not changed, but will need to be accessed by the methods below.
            attr_reader :gboard_grid



            def initialize (gboard, position, gboard_grid)
                    @gboard = gboard
                    @position = position
                    @gboard_grid =gboard_grid
            end


            def draw (position)
                     # check if players choosen position is taken before making with an "X".
                      if gboard[@positon].class == Integer ###NOT REAL CODE!
                            gboard[@position] = "X"
                            puts gboard_grid
                      end


                      #Check for winning consecutive markers.  Since player starts the game,
                      #we assume winning markers at this step should be "X"s.

                      if gboard[1] == gboard[2] && gboard[2] == gboard[3] ||
                            gboard[4] == gboard[5] && gboard[5] == gboard[6] ||
                            gboard[7] == gboard[8] && gboard[8] == gboard[9] ||
                            gboard[1] == gboard[4] && gboard[4] == gboard[7] ||
                            gboard[2] == gboard[5] && gboard[5] == gboard[8] ||
                            gboard[3] == gboard[6] && gboard[6] == gboard[9] ||
                            gboard[3] == gboard[5] && gboard[5] == gboard[7] ||
                            gboard[1] == gboard[5] && gboard[5] == gboard[9]

                            puts "You won! Game over."

                            elsif

                            #Generates random number for bot from 1 to 9.
                            bot_draw =  rand(1..9)

                                  # check if bot's choosen position is taken before making with an "O".
                                  if gboard[bot_draw].Integer?
                                  gboard[bot_draw] = "O"

                            else bot_draw = rand(1..9)

                      end

                      puts gboard_grid

                      end

                       # Checks if bot's move wins at this step.
                       if   gboard[1] == gboard[2] &&  gboard[2] == gboard[3] ||
                            gboard[4] == gboard[5] && gboard[5] == gboard[6] ||
                            gboard[7] == gboard[8] && gboard[8] == gboard[9] ||
                            gboard[1] == gboard[4] && gboard[4] == gboard[7] ||
                            gboard[2] == gboard[5] && gboard[5] == gboard[8] ||
                            gboard[3] == gboard[6] && gboard[6] == gboard[9] ||
                            gboard[3] == gboard[5] && gboard[5] == gboard[7] ||
                            gboard[1] == gboard[5] && gboard[5] == gboard[9]

                            puts "I won! Game over."
                       end


            end


end