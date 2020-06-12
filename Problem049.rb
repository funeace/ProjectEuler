# 項差3330の等差数列1487, 4817, 8147は次の2つの変わった性質を持つ.
# (i)3つの項はそれぞれ素数である.
# (ii)各項は他の項の置換で表される.
# 1, 2, 3桁の素数にはこのような性質を持った数列は存在しないが, 4桁の増加列にはもう1つ存在する.
# それではこの数列の3つの項を連結した12桁の数を求めよ.

require 'prime'

# 各校は他の公の置換で表されるがわからなかった。
(1000..9999).each do |i|
  # 素数判定を行い、素数であったら
  if Prime.prime?(i)
    (1000..i).each do |j|
      if Prime.prime?(i + j) && (i + j) <= 9999
        if Prime.prime?(i - j) && (i - j) >= 1000
          if (i + j) == i +  i - (i - j)
            puts "#{i - j}#{i}#{i+j}"
          end
        elsif (i - j) <1000
        end
      elsif (i + j) > 9999
        break
      end
    end
  end
end