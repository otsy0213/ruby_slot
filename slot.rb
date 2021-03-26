coins = 50
points = 0
getcoins = 0

while coins >= 0
  # メダル入れた時の処理
  puts "残りコイン#{coins}枚です。"
  puts "ポイント #{points}"
  puts "コインをいくつ入れますか？"
  puts "|1.(1枚)||2.(2枚)||3.(3枚)||4.(やめとく)|"
  
    array = [1,2,3,0]  #賭けるコインの枚数を格納
    bet = gets.to_i - 1  
    puts "-----------------------------"
    
  if coins < bet + 1
    coins -= bet + 1
    puts "コインが足りません"
    break
  
  elsif bet == 4 - 1
    puts "また来てね‼︎"
    break
    
  else
    coins -= bet + 1
    puts "残コイン#{coins}枚"  
    # リールを回す処理
    puts "Enterを3回押して‼︎"
    puts "-----------------------------"
    
    top1    = rand(1..9)  # =>1列目1段目リールの番号
    top2    = rand(1..9)  # =>2列目1段目リールの番号
    top3    = rand(1..9)  # =>3列目1段目リールの番号
    center1 = rand(1..9)  # =>1列目2段目リールの番号
    center2 = rand(1..9)  # =>2列目2段目リールの番号
    center3 = rand(1..9)  # =>3列目2段目リールの番号
    bottom1 = rand(1..9)  # =>1列目3段目リールの番号
    bottom2 = rand(1..9)  # =>2列目3段目リールの番号
    bottom3 = rand(1..9)  # =>3列目3段目リールの番号
    
    # =>  リールを止める処理
    gets 
    puts "|#{top1}|| || |\n|#{center1}|| || |\n|#{bottom1}|| || |"
    puts "-----------------------------"
    gets
    puts "|#{top1}||#{top2}|| |\n|#{center1}||#{center2}|| |\n|#{bottom1}||#{bottom2}|| |"
    puts "-----------------------------"
    gets
    puts "|#{top1}||#{top2}||#{top3}|\n|#{center1}||#{center2}||#{center3}|\n|#{bottom1}||#{bottom2}||#{bottom3}|"
    puts "-----------------------------"
    
    if top1 == top2 && top2 == top3 || center1 == center2 && center2== center3 || bottom1 == bottom2 && bottom2 && bottom2 == bottom3 || top3 == center2 && center2 == bottom1 then
      puts "当たり"
      getcoins = array[bet] * 50
      getpoints = array[bet] * 10
      coins += getcoins
      points += getpoints
      puts "コインを#{getcoins}枚ゲット\n#{getpoints}ポイント獲得！"
    else
      puts "外れ残念もう一度"
    end
  end
end
