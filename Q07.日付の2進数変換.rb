# 年月日をYYYMMDDの8桁の整数で表したとき、これを2進数に変数して逆から並べ、
# さらに10進数に戻したとき、元の日付と同じ日付になるものを探して下さい。
# 期間は、前回は東京オリンピック（1964年10月10日）から、
# 次回の東京オリンピック（2020年7月24日予定）とします。

require "date"

term = Date.parse("19641010")..Date.parse("20200724")

term_list = term.map{|d|d.strftime('%Y%m%d').to_i}

puts term_list.select{|d| d== d.to_s(2).reverse.to_i(2)}
