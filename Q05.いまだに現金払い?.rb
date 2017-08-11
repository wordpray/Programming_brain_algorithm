=begin
10円玉,50円玉,100円玉,500円玉の組み合わせで両替することができる。
たくさん小銭が出ると困るため、最大で15枚になるように両替する。

1000円札を入れた時に出てくる硬貨の組み合わせは何通りあるか求めて下さい。
=end

# ANSWER1

count = 0

(0..2).each do |coin500|
  (0..10).each do |coin100|
    (0..15).each do |coin50|
      (0..15).each do |coin10|
        if coin500 + coin100 + coin50 + coin10 <= 15 #15枚以内について判定
          if coin500*500 + coin100*100 + coin50*50 + coin10*10 == 1000 #各枚数に値を掛ける
            count += 1 #TRUEの値についてはcountに＋1を追加
          end
        end
      end
    end
  end
end

puts count

# ANSWER2

coins = [10, 50, 100, 500]
count = 0

(2..15).each do |i|
  coins.repeated_combination(i).each{|coin_set|
    count += 1 if coin_set.inject(:+) == 1000
  }
end

puts count

# ANSWER3


