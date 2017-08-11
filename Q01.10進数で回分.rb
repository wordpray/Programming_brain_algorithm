# 10進数、2進数、8進数のいずれで表現しても回文数となる数のうち、10進数の10以上で最小の値を求めて下さい。

num = 11

while true do
  if num.to_s     == num.to_s.reverse &&
     num.to_s(2)  == num.to_s(2).reverse &&
     num.to_s(10) == num.to_s(10).reverse
    puts num
    break
  end
  num += 2
end
