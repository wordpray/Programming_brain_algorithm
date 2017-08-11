# 1000-9999のうち四則演算の演算子を入れて計算し、出来上がった結果が元の数の桁を逆から並べた数字と同じになるもの

(1000..9999).each do |n|
  n_str = n.to_s
  op = ['', '*']
  
  op.each do |j|
    op.each do |k|
      op.each do |l|
        calc = n_str[0] + j + n_str[1] + k + n_str[2] + l + n_str[3]
        # rubyだと先頭に0がつくと8進数と処理されるため除外する。
        # 0での除算についても除外するように修正する必要がある。
        calc.gsub!(/([*])([0]+)([0-9])/){$1 + $3}
        if calc.length > 4
          result = eval(calc)
          if result.to_s == n_str.reverse
            p n
          end
        end
      end
    end
  end
end
