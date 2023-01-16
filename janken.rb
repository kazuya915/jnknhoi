puts "最初はグーじゃんけん・・・・"

def janken
    puts "（グーなら0、チョキなら1、パーなら2を入力してください。）"
    @input = gets.chomp.to_i
    while @input > 2
        puts "入力が間違っています"
        puts "(グーなら0、チョキなら1、パーなら2を入力してください。)"
        @input = gets.chomp.to_i
    end
    hand_type = ["グー","チョキ","パー"]
    my_hand = @input
    pc_hand = rand(0..2)


    puts "ほい！"
    puts "あなたは#{hand_type[my_hand]}です。"
    puts "コンピューターは#{hand_type[pc_hand]}です。"

    
    $pass = "0"
    if my_hand == pc_hand
        puts "あいこで・・・"

        return true
        
    elsif (my_hand == 0 && pc_hand == 1) || (my_hand == 1 && pc_hand == 2) || (my_hand == 2 && pc_hand == 0) 
        puts "ジャンケンはあなたの勝ちです"
        $pass = "you win!"
        return  false


    elsif (my_hand == 0 && pc_hand == 2) || (my_hand == 1 && pc_hand == 0) || (my_hand == 2 && pc_hand == 1) 
        puts "ジャンケンはあなたの負けです"
        $pass = "you lose!"
        return  false
    end
end


    
# (勝敗がついた際にacchimuiteへ移行、あいこの場合はwhileに処理が戻ってじゃんけんが繰り返される)


def acchimuite
    puts "あっち向いて・・・"
    puts "（上なら0、下なら1、右なら2、右なら3を入力してください。)"
    @input_sec = gets.chomp.to_i
    while @input_sec > 3
        puts "入力が間違っています"
        puts "(上なら0、下なら1、右なら2、右なら3を入力してください。)"
        @input_sec = gets.chomp.to_i
    end

    hoi_type = ["上","下","左","右"]
    my_hoi = @input_sec
    pc_hoi = rand(0..3)


    puts "ホイ！！"
    puts "あなたは#{hoi_type[my_hoi]}です。"
    puts "コンピューターは#{hoi_type[pc_hoi]}です。"

    if $pass == "you win!" && my_hoi == pc_hoi
        puts "あなたの勝ちです"
        return "you win!"
        
    elsif $pass == "you lose!" && my_hoi == pc_hoi
        puts "あなたの負けです"
        return "you lose!"

    else
        puts "もう一回ジャンケンです"
        next_game = true

        while next_game
            next_game = janken
        end
        if next_game == false
            acchimuite
        end
    end

end

next_game = true

while next_game
  next_game = janken
end

if next_game == false
    acchimuite
end