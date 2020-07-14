result = rand(0..9)     # 0～9の中からランダムで数字が選ばれたものを変数resultに格納してください
puts "0～9の数字を入力してください"

while true 
input = gets.to_i   # ループの条件でユーザーからの入力値を使いたい場合はここで空の変数として先に定義しておく。

 break if input == result

 if input > result
  puts "#{input}より小さい数字です" 

 else  input < result
  puts "#{input}より大きい数字です" 
 
 end

end
puts "正解！#{input}でした！"
exit
  # ユーザーの入力が答えと一致するまで処理を繰り返すループ文を書いてください
    
  # 以下ループ内処理  
    
  # ユーザーから入力を受けましょう
     
  # ユーザが入力した値と変数resultの値を比べた場合の条件分岐を書きましょう
  # もし正解だった場合は、アプリケーションが終了するようにしてください
  　
