class Player
    attr_accessor :name
    def initialize(name)
    @name = name
    end 
end

# 人類玩家的類別
class Human < Player
    def get_gesture
    input = gets.chomp
    end
end

# 電腦的類別
class Computer < Player
    def get_gesture
    input = ['R', 'P', 'S'].shuffle!.last
    end
end


class RPS

    def initialize
        intro
        get_player_gestures
    end

    def intro
        #印出開場畫面，告訴玩家遊戲規則
        puts "|===============================================|" 
        puts "|      Welcome to Rock Paper Scissors!!!        |"
        puts "|===============================================|"
        puts "please choose one of the following: R / P / S"
    end

    def get_player_gestures
        #取得玩家和電腦兩個物件的
        bob = Human.new("Bob")
        comp = Computer.new("comp")
        b1 = bob.get_gesture
        c1 = comp.get_gesture
        decide(b1, c1)
    end

    def decide(user_input,comp_input)
        #邏輯判斷式
        puts "computer input is #{comp_input}. user input is #{user_input}"
        
        if  comp_input == user_input
            puts "Tied"
        elsif (comp_input == "R" && user_input == "S") ||(comp_input == "S" && user_input =="P") ||(comp_input == "P" && user_input =="R")
            puts "Computer wins"
        else
            puts "You win"
        end
        
        continue?()
    end

    def continue?()
        puts "Play Again?: Y / N"
        continue = gets.chomp.upcase
        
        # 若使用者回答 "N"，印出離開的訊息，不是就回到迴圈的上層繼續玩
        if(continue == "Y")
            intro
            get_player_gestures
        else
            puts "Good Bye! Thanks for playing!"
            exit
        end
    end

end

# ------------Main Program Starts Here ---------------------
# 主程式只要一行即可
game = RPS.new