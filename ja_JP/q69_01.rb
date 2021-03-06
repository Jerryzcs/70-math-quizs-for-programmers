# 座席に1 〜30の番号を付与
seats = (1..30).to_a
# 条件を満たさない配置は除外対象
ng = [[1, 2, 7], [5, 6, 12], [19, 25, 26], [24, 29, 30],
      [1, 2, 3, 8], [2, 3, 4, 9], [3, 4, 5, 10],
      [4, 5, 6, 11], [1, 7, 8, 13], [7, 13, 14, 19],
      [13, 19, 20, 25], [6, 11, 12, 18], [12, 17, 18, 24],
      [18, 23, 24, 30], [20, 25, 26, 27], [21, 26, 27, 28],
      [22, 27, 28, 29], [23, 28, 29, 30],
      [2, 7, 8, 9, 14], [3, 8, 9, 10, 15], [4, 9, 10, 11, 16],
      [5, 10, 11, 12, 17], [8, 13, 14, 15, 20], [9, 14, 15, 16, 21],
      [10, 15, 16, 17, 22], [11, 16, 17, 18, 23],
      [14, 19, 20, 21, 26], [15, 20, 21, 22, 27],
      [16, 21, 22, 23, 28], [17, 22, 23, 24, 29]]

cnt = 0
seats.combination(15){|boy|   # 男子の配置の組み合わせ
  girl = seats - boy          # 女子の配置の組み合わせ
  if ng.all?{|n| boy & n != n} && ng.all?{|n| girl & n != n} then
    cnt += 1
  end
}
p cnt
