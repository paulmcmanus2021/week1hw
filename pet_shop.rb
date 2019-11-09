def pet_shop_name(name)
  return name[:name]
end

def total_cash(shop)
  sum = shop[:admin][:total_cash]
end

def add_or_remove_cash(shop,amount)
  cash = shop[:admin][:total_cash]
  shop[:admin][:total_cash] = cash + amount
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop,amount)
  shop[:admin][:pets_sold] += amount
end

def stock_count(shop)
  count = shop[:pets].length
end

def pets_by_breed(shop,breed)
  pets = []
    for elements in shop[:pets]
      if elements[:breed] == breed
        pets << elements[:pets]
      end
    end
    return pets
end
