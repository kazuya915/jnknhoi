class Janken
    def initialize()
        puts "最初はグー、じゃんけん・・・"
        puts "（グーなら0、チョキなら1、パーなら2を入力してください。）"
        @input = gets.chomp.to_i
        while @input > 2
            puts "入力が間違っています"
            puts "(グーなら0、チョキなら1、パーなら2を入力してください。)"
            @input = gets.chomp.to_i
        end
    end

    def judgement
        hand_type = ["グー","チョキ","パー"]
        my_hand = @input
        pc_hand = rand(0..2)

        puts "あなたは#{hand_type[my_hand]}です。"
        puts "コンピューターは#{hand_type[pc_hand]}です。"

       

        if my_hand == pc_hand
            puts "あいこで・・・"
            @result = j_result[0]
            return @result
            
        elsif (my_hand == 0 && pc_hand == 1) || (my_hand == 1 && pc_hand == 2) || (my_hand == 2 && pc_hand == 0) 
            puts "ジャンケンはあなたの勝ちです"
            @result = j_result[1]
            return @result


        elsif (my_hand == 0 && pc_hand == 2) || (my_hand == 1 && pc_hand == 0) || (my_hand == 2 && pc_hand == 1) 
            puts "ジャンケンはあなたの負けです"
            @result = j_result[2]
            return @result
        end
    end
end

class Hoi
    def initialize()
        puts "あっち向いて・・・"
        puts "（上なら0、下なら1、右なら2、右なら3を入力してください。)"
        @input_sec = gets.chomp.to_i
        while @input > 3
            puts "入力が間違っています"
            puts "(上なら0、下なら1、右なら2、右なら3を入力してください。)"
            @input_sec = gets.chomp.to_i
        end
    end

    def judgement_sec
        hoi_type = ["上","下","左","右"]
        my_hoi = @input_sec
        pc_hoi = rand(0..3)

        puts "あなたは#{hoi_type[my_hoi]}です。"
        puts "コンピューターは#{hoi_type[pc_hoi]}です。"

        if @result == j_result[1] && my_hoi == pc_hoi
            puts "@result"
            
        elsif @result == j_result[2] && my_hoi == pc_hoi
            puts "@result"

        else
            puts "@result"
        end

    end

end

janken = Janken.new()
janken.judgement

if @result = j_result[1] || @result = j_result[2]
    hoi = Hoi.new()
    hoi.judgement_sec
end

