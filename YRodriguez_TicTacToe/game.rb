
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
                      while gboard[@positon].integer? == true do
                              gboard[@position] = "X"
                      end

                        #Generates random number for bot from 1 to 9.
                        bot_draw =  rand(1..9)

                      # check if bot's choosen position is taken before making with an "O".
                      while gboard[bot_draw].Integer? do
                             gboard[bot_draw] = "O"
                      end


                     puts gboard_grid
                   # "                              |                          |                            \n
                   #       #{gboard[1]}      |    #{gboard[2]}    |     #{gboard[3]}     \n
                   #                                |                          |                            \n
                   #    ----------------+--------------+---------------\n
                   #                                |                           |                           \n
                   #       #{gboard[4]}       |   #{gboard[5]}     |     #{gboard[6]}    \n
                   #                                |                          |                             \n
                   #    ----------------+--------------+---------------\n
                   #                                |                          |                           \n
                   #        #{gboard[7]}      |  #{gboard[8]}     |     #{gboard[9]}    \n
                   #                                |                          |                           \n "

            end


end