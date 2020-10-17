# ハッカソンプログラム
# 商品一覧データ表示
class Drink
  attr_reader :name, :price  
  def initialize(name, price)
    @name = name
    @price = price
  end

end
drinks = []
drinks << Drink.new("コーヒー", 150)
drinks << Drink.new("コーラ", 120)
drinks << Drink.new("お茶", 120)
drinks << Drink.new("水", 100)

drinks.each do |drink|
  puts "商品名: #{drink.name} 値段: #{drink.price}円 "
end

# お金を入金
puts "お金を入れて下さい"
money = gets.to_i
p money
# 商品選択を促す
puts "商品(1〜4)を選んで下さい"
drink_num = gets.to_i
selected_number = drink_num
selected_drink = drinks[selected_number -1] 
# お釣りを渡す
rest_money = money - selected_drink.price 
puts "お釣りは#{rest_money}です"