
class Tic_tac_toe

            #Allows  reading and setting of gboard (shorthand for 'game board.), position (player's attempted move, and bot's move),  ''
            attr_accessor :gboard, :positon , :bot_draw

            # The gameboard grid format is not changed, but will need to be accessed by the methods below.
            attr_reader :gboard_grid



            def initialize (gboard, position, gboard_grid)
                    @gboard = gboard
                    @position = position
                    @gboard_grid = gboard_grid
                    @bot_draw = bot_draw
            end


            def draw (position)
                     # checks if players choosen position is taken before marking gboard with a new "X".

                      if gboard[@position] != "X" && gboard[@position] != "O"
                            gboard[@position] = "X"
                        #    puts @gboard_grid
                          #  print @gboard
                      end


                      #Check for winning consecutive markers immediately after player's draw.
                      # If there is a win, since the  players  was the last to draw, he/she is ideclares the wineer.




                            if @gboard[1] == @gboard[2] && @gboard[2] == @gboard[3] ||
                                  @gboard[4] == @gboard[5] && @gboard[5] == @gboard[6] ||
                                  @gboard[7] == @gboard[8] && @gboard[8] == @gboard[9] ||
                                  @gboard[1] == @gboard[4] && @gboard[4] == @gboard[7] ||
                                  @gboard[2] == @gboard[5] && @gboard[5] == @gboard[8] ||
                                  @gboard[3] == @gboard[6] && @gboard[6] == @gboard[9] ||
                                  @gboard[3] == @gboard[5] && @gboard[5] == @gboard[7] ||
                                  @gboard[1] == @gboard[5] && @gboard[5] == @gboard[9]



                                  puts "You win! Game over."
                                  $winner = "y"

                                  elsif

                                  #Generates random number for bot from 1 to 9.
                                  bot_draw =  rand(1..9)
                                 #print @gboard

                                        # check if bot's choosen position is taken before making with an "O".
                                        #but needs further developing to loop so bot_draw keeps reseting until it finds a an unclaimed spot on the gboard.

                                        if gboard[bot_draw] != "X" && gboard[bot_draw] != "O"
                                        gboard[bot_draw] = "O"

                                  else bot_draw = rand(1..9)
                                    #puts @gboard

                            end

                           # puts gboard_grid

                             # Checks if bot's move wins at this step.
                             if   @gboard[1] == @gboard[2] &&  @gboard[2] == @gboard[3] ||
                                  @gboard[4] == @gboard[5] && @gboard[5] == @gboard[6] ||
                                  @gboard[7] == @gboard[8] && @gboard[8] == @gboard[9] ||
                                  @gboard[1] == @gboard[4] && @gboard[4] == @gboard[7] ||
                                  @gboard[2] == @gboard[5] && @gboard[5] == @gboard[8] ||
                                  @gboard[3] == @gboard[6] && @gboard[6] == @gboard[9] ||
                                  @gboard[3] == @gboard[5] && @gboard[5] == @gboard[7] ||
                                  @gboard[1] == @gboard[5] && @gboard[5] == @gboard[9]

                                  puts "I won! Game over."
                                  $winner = "y"
                            end
                      end

            end

end