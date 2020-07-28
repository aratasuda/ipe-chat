# # # result = rand(0..9)     # 0～9の中からランダムで数字が選ばれたものを変数resultに格納してください
# # # puts "0～9の数字を入力してください"

# # # while true 
# # # input = gets.to_i   # ループの条件でユーザーからの入力値を使いたい場合はここで空の変数として先に定義しておく。

# # #  break if input == result

# # #  if input > result
# # #   puts "#{input}より小さい数字です" 

# # #  else  input < result
# # #   puts "#{input}より大きい数字です" 
 
# # #  end

# # # end
# # # puts "正解！#{input}でした！"
# # # exit
# # #   # ユーザーの入力が答えと一致するまで処理を繰り返すループ文を書いてください
    
# # #   # 以下ループ内処理  
    
# # #   # ユーザーから入力を受けましょう
     
# # #   # ユーザが入力した値と変数resultの値を比べた場合の条件分岐を書きましょう
# # #   # もし正解だった場合は、アプリケーションが終了するようにしてください

# # #   　
# # num = 1
# # while num <= 50
  
# #   if num % 3 == 0
# #     puts "Aho"
  
# #   else 
# #     num = num.to_s
    
# #     if num.include?("3")
# #      puts "Aho"
# #     else 
# #      puts num

# #     end
# #     num = num.to_i
# #   end

# #   num += 1
# # end

# def register_review(reviews)   # レビューを登録するメソッドを完成させてください。引数も利用しましょう。
#   puts "商品名を入力してください"
#   input_name = gets.chomp # ユーザーの入力を受け付けてください
#   puts "感想を入力してください"
#   input_reviews = gets.chomp # ユーザーの入力を受け付けてください

#   review = { name: input_name, reviews: input_reviews}# ユーザーの入力をハッシュにまとめましょう
#   reviews << review # ハッシュにしたものを、whileの前に定義したreviewsという配列に格納しましょう
  
# end

# def show_reviews(reviews)     # レビューを全て表示するメソッドを完成させてください。引数も利用しましょう。
#   # ループを使ってレビューを全て表示させましょう。
#   # 下記のように表示されるようにしてください。
#   # 【】はコードに直してください
#   reviews.each_with_index do |review, index|
#     puts "商品名 #{review[:name] }"
#     puts "感想 #{review[:reviews] }"
#   end
# end

# reviews = []
# while true do
#   puts "番号を入力してください"
#   puts "[1] レビューを登録する"
#   puts "[2] レビューの一覧を見る"
#   puts "[3] アプリを終了する。"
#   input = gets.to_i

#   case input
#   when 1
#       # レビューを登録するメソッドを呼び出してください
#       register_review(reviews)
#   when 2
#       # レビュー一覧を表示するメソッドを呼び出してください
#       show_reviews(reviews)
#   when 3
#       # アプリケーションを終了する処理を書いてください
#       exit
#   end
# end