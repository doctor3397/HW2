# homework1
# 剪刀石頭布
# 先要使用者輸入剪刀石頭或布的其中一個選項
# 接下來讓電腦亂數選出一個選項
# 比較兩個選項，決定誰贏誰輸
# 輸出結果
# 問使用者是否再玩一次

begin #可以美化輸出
    puts "|===============================================|" 
    puts "|       Welcome to Rock Paper Scissors!!!       |"
    puts "|===============================================|"

    begin 
        puts "please choose one of the following: R / P / S"
        user_input = gets.chomp.upcase
    end while !["R", "P", "S"].include?(user_input) 

    #接下來請把剩下的部份寫出來...
    comp = ["R", "P", "S"]
    comp.shuffle!
    comp_input = comp.last 
    puts "You chose #{user_input}, computer chose #{comp_input}."

    if  comp_input == user_input
        puts "Tied"
    elsif (comp_input == "R" && user_input == "S") ||(comp_input == "S" && user_input =="P") ||(comp_input == "P" && user_input =="R")
        puts "Computer wins"
    else
        puts "You win"
    end

    #問使用者是否還要再玩 
    begin
        puts "Play Again?: Y / N"
        continue = gets.chomp.upcase
    end while !["Y", "N"].include?(continue)

end while continue == "Y"

# 若使用者回答 "N"，印出離開的訊息，不是就回到迴圈的上層繼續玩
puts "Good Bye! Thanks for playing!"