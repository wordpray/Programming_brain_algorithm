def cutbar(m, n)
  count = 0
  current = 1
  while n > current do
    if current < m
      #棒の数がm人に満たない場合は,currentの2倍づつ増えていく
      current += current
    else
      #棒の数がm人を満たす場合は、m個づつ列は増えていく
      current += m
    end
      count = count + 1
  end
  puts (count)
end
