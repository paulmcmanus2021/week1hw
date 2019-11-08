def pet_shop_name(name)
  return name[:name]
end

def total_cash(shop)
  sum = shop[:admin][:total_cash]
  return sum
end

def add_or_remove_cash(shop,amount)
  cash = shop[:admin][:total_cash]
  shop[:admin][:total_cash] = cash + amount
  return shop[:admin][:total_cash]
end
