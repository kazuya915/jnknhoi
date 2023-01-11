class Janken
    # def initialize()
        
    # end
    

    def judgement
        puts "最初はグー、じゃんけん・・・"
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

       

        if my_hand == pc_hand
            puts "あいこで・・・"

            return "draw!"
            
        elsif (my_hand == 0 && pc_hand == 1) || (my_hand == 1 && pc_hand == 2) || (my_hand == 2 && pc_hand == 0) 
            puts "ジャンケンはあなたの勝ちです"
            
            return "you win!"


        elsif (my_hand == 0 && pc_hand == 2) || (my_hand == 1 && pc_hand == 0) || (my_hand == 2 && pc_hand == 1) 
            puts "ジャンケンはあなたの負けです"
            
            return "you lose!"
        end
    end
end

class Hoi
    def initialize()
        puts "あっち向いて・・・"
        puts "（上なら0、下なら1、右なら2、右なら3を入力してください。)"
        @input_sec = gets.chomp.to_i
        while @input_sec > 3
            puts "入力が間違っています"
            puts "(上なら0、下なら1、右なら2、右なら3を入力してください。)"
            @input_sec = gets.chomp.to_i
        end
    end

    def judgement_sec
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
            return "retry_j"
        end

    end

end

janken = Janken.new()
janken.judgement
$pass = janken.judgement


Hoi_start = ["you win!","you lose!"]

# 追加　もしジャンケンがアイコなら　またジャンケンという文。この文のせいで
# while $pass == "draw!"
#     janken.judgement
# end

if Hoi_start.any? { |t| $pass.include?(t) }
    hoi = Hoi.new()
    hoi.judgement_sec
end

# 追加　あっち向いてホイの勝敗がつかない時
$retry = 'hoi.judgement_sec'
while $retry == "retry_j"
    janken.judgement
end

